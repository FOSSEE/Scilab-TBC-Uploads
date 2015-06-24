clear;
clc;
printf("\n Example 6.2");
//Calculating voidage by considering eight closely packed spheres of diameter d in a cube of size 2d
printf("\n (a)");
function[e]=voidage()
    d = 1*10^(-4);    //diameter is in meters
    meu = 3*10^(-3);  //viscosity is in Ns/m^2
    ps = 2600;        //density is in kg/m^3
    p = 900;         //density is in kg/m^3
    e = [8*d^(3)-8*(%pi/6)*d^(3)]/(8*d^(3));
    funcprot(0);
endfunction
e = voidage();
printf("\nvoidage = %.2f",e);

//Calculating minimum fluidisation mass flow rate

function[Gmf]=min_fluidis_vel()
    e = voidage();
    d = 1*10^(-4);    //diameter is in meters
    meu = 3*10^(-3);  //viscosity is in Ns/m^2
    ps = 2600;        //density is in kg/m^3
    p = 900;         //density is in kg/m^3  
    g = 9.81;         //acceleration due to gravity is in m/sec^2
    Gmf = 0.0055*(e)^(3)/(1-e)*(d^2)*p*(ps-p)*g/meu;
    funcprot(0);
endfunction
Gmf = min_fluidis_vel();
printf("\nminimum fluidisation velocity is %.3f kg/m^2sec",Gmf);


printf("\n (b)");
function[u]=terminal_velocity()
    e = voidage();
    d = 1*10^(-4);    //diameter is in meters
    meu = 3*10^(-3);  //viscosity is in Ns/m^2
    ps = 2600;        //density is in kg/m^3
    p = 900;         //density is in kg/m^3  
    g = 9.81;         //acceleration due to gravity is in m/sec^2
    u = d^(2)*g*(ps-p)/(18*meu);
    funcprot(0);
endfunction
printf("\nterminal velocity is %.4fm/sec",terminal_velocity());

//Reynolds no for this Terminal velocity is
Re = (10^(-4)*0.0031*900)/(3*10^(-3));
printf("\nReynlds no =%.3f",Re);
printf("\nThe required mass flow rate is %.2f kg/m^2sec",terminal_velocity()*900);

    

    
    
    
    
    
    
    
    
    
    
    
    
     
 