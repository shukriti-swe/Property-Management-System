<?php

namespace App\Filters;

use CodeIgniter\Filters\FilterInterface;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use App\Models\Popertymodel;
use \Modules\Setting\Models\Rolemodel;
use \Modules\User\Models\User;

class UserAccess implements FilterInterface
{
    /**
     * Do whatever processing this filter needs to do.
     * By default it should not return anything during
     * normal execution. However, when an abnormal state
     * is found, it should return an instance of
     * CodeIgniter\HTTP\Response. If it does, script
     * execution will end and that Response will be
     * sent back to the client, allowing for error pages,
     * redirects, etc.
     *
     * @param RequestInterface $request
     * @param array|null       $arguments
     *
     * @return mixed
     */
    public function before(RequestInterface $request, $arguments = null)
    {
        
        $session = session();

        $user_model = new User();

        $user_id= $session->get('userId');

            $role_model = new Rolemodel();
            $this_user = $user_model->where('id',$user_id)->first();

            $user_role= $role_model->where('id',$this_user['user_type'])->first();
            
            
            if(!empty($user_role)){

                //print_r($user_role['user_access']);die();

                $user_acces=json_decode($user_role['user_access'],true);
               // print_r($user_acces);die();
                $user_acces['account_mode']='account_mode';
                //$user_acces['login']='/';
                // $user_acces['poperty_add']='poperty_add';
                $user_acces['index']='index';
                $user_acces['logout']='logout';
                $user_acces['poperty_list']='poperty_list';
                // $user_acces['account_mode']='account_mode';

                //print_r($user_acces);die();

                //echo "hello12";print_r($user_acces);die();

                $url = current_url(true);

                 $uri = new \CodeIgniter\HTTP\URI($url);
                 $third_segment= $uri->getSegment(3);  //die();
                
                //print_r($user_acces);die();

                if(!in_array($third_segment,$user_acces)){
                  
                     //throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound();
                    //  $response= service('response');
                    //  $response->setStatusCode(401);
                    //  return $response;
                    throw \CodeIgniter\Exceptions\ConfigException::forDisabledMigrations();

                 
                }

            }
           

            
   
    }

    /**
     * Allows After filters to inspect and modify the response
     * object as needed. This method does not allow any way
     * to stop execution of other after filters, short of
     * throwing an Exception or Error.
     *
     * @param RequestInterface  $request
     * @param ResponseInterface $response
     * @param array|null        $arguments
     *
     * @return mixed
     */
    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        //
    }
}
