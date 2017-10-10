//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-11 ;Example 11.7
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

function result=table(delcr)          //Function to get result in table format using Euler’s method for diferent critical clearing angles
delta=0.4179                          //Initial value of delta in rad taken from example 7.6
omega=2*%pi*60                        //Initial value of omega in rad/s
H=3                                   //Value of H constant in pu-s
omegasyn=omega 
t=0;
delt=0.02                             //Step size
result=[];                            //Initialization of result table
tc=0;                                 //Initialization of critical clearing time
while t<0.861                         //Maximum time for Eler's method is o.86
        result=[result;t delta omega]              //Updating the result table
        ddeltat=omega-omegasyn                     //Calculation of ddeltat/dt using equation 11.4.7
        deltab=delta+ddeltat*delt                  //Calculation of delta_bar using equation 11.4.9

             if delta<delcr                        //Steps to calculate accelerating power for prefault condition
                 papu=1-0.9152*sin(delta)    
                 pafb=1-0.9152*sin(deltab)
             else                                  //Steps to calculate accelerating power for postfault condition
                 tc=tc+1;
                 papu=1-2.1353*sin(delta)  
                 pafb=1-2.1353*sin(deltab)
             end
        if tc==1 & delcr==1.95                     //Displaying result of case 1(Stable) stable with Critical clearing angle of  1.95 
            printf('The critical clearing time for case 1 is %.2f sec\n',t)
        elseif tc==1 & delcr==2.09                 //Displaying result of case 2(Unstable) stable with Critical clearing angle of 2.09 
            printf('The critical clearing time for case 2 is %.2f sec\n',t)
        end
        domegat=papu*omegasyn*omegasyn/(2*H*omega)        //Calculation of domegat/dt using equation 11.4.8
        omegab=omega+domegat*delt                         //Calculation of omega_bar using equation 11.4.10
        ddeltab=omegab-omegasyn                           //Calculation of ddelta_bar/dt using equation 11.4.11
        domegab=pafb*omegasyn*omegasyn/(2*H*omegab)       //Calculation of domega_bar/dt using equation 11.4.12
        delta=delta+(ddeltat+ddeltab)*delt/2              //Calculation of delta for change in time using equation 11.4.13
        omega=omega+(domegat+domegab)*delt/2              //Calculation of omega for change in time using equation 11.4.14
        t=t+delt;
end
endfunction

case1=table(1.95)                         //case1 - critical clearing angle is 1.95 rad
case2=table(2.09)                         //case2 - critical clearing angle is 2.09 rad
printf(' -----------------------------   -----------------------------\n')
printf('        CASE-1 STABLE                  CASE-2 UNSTABLE        \n')
printf(' -----------------------------   -----------------------------')
disp([case1 case2],'Time(s) Delta(rad) Omega(rad/s) Time(s) Delta(rad) Omega(rad/s)')

