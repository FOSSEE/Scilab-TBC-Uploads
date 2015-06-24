clear all;
clc;
printf("\n Example 3.1");
    d = 0.00040;   //Diameter of the particle in m
    p1 = 820;      //Density of the fluid in kg/m^3
    meu = 0.01;    //Viscosity of the fluid in N s/m^2
    p2 = 7870;    //Density of steel in kg/m^3
    g = 9.81;     //Acceleartion due to gravity in m/sec^2
//Computation of terminal velocity of a spherical particle 
function[x]=galileo_number()

    x = (2*d^3*(p2-p1)*p1*g)/(3*(meu)^2); //x = (Ro/pu^2)*Re^2
    funcprot(0);
endfunction
x = galileo_number();
printf("\n The value of (Ro/pu^2)/Re^2 is  %f\n",x);


//From table 3.4 log(x) corresponds to log(Re)=0.222
Re = 1.667;
function[u]=teminal_velocity()
    u=(Re*meu)/(p1*d);
    funcprot(0);
endfunction
 u = teminal_velocity();
 printf("\n The terminal velocity of the steel ball is %.3f m/sec or %.0f mm/sec",u,u*1000);


    