clear;
clc;
printf("\t Example 5.3 ");
//Assumption: Resistance force F on an isolated sphere is given by Stoke's law:F = 3*%pi(meu)d*u

C = poly([0],'C');
x=roots(-4.8*C+(1-C));
printf("\n concentration is:%.3f",x);

//terminal falling velocity u can be calculated by force balance
//u = d^2*g/(18*meu)*(ps-p)
function[u]=terminal_velocity()
    d = 10^(-4);   //diameter is in meters
    g = 9.81;      //acceleration due to gravity is in m/sec^2
    meu = 10^(-3); //viscosity is in N.s/m^2
    ps = 2600;     //density is in kg/m^3
    p = 1000;      //density is in kg/m^3
    
    u = (d^2)*g*(ps-p)/(18*meu);
    funcprot(0);
endfunction


function[si]=si_max()
    u=terminal_velocity()
    printf("\n The terminal falling velocity is %.5f m/sec",u);
    si=u*x*(1-x)^(4.8);
    funcprot(0);
endfunction
si = si_max();
printf("\nThe maximum value is %f*10^(-4) m^3/m^2sec",si*10^4)




 
