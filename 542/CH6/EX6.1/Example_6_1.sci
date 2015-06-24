clear;
clc;
printf("\n Example 6.1");
//Calculating minimum fluidisation velocity

//Calculating Galileo number
function[Ga]=Galileo_number()
    d = 3*10^(-3);  //particle size is in meters
    p = 1100;       //density of liquid is in kg/m^3
    ps = 4200;      //density of spherical particles is in kg/m^3
    g = 9.81;       //acceleration due to gravity is in m/sec^2
    u = 3*10^(-3);  //viscosity is in Ns/m^2
    Ga = d^3*p*(ps-p)*g/u^2;
    funcprot(0);
endfunction
Ga = Galileo_number();
printf("\nGalileo number = %f*10^5",Ga*10^(-5));

//Calculating Re mf
Remf = 25.7*(sqrt(1+5.53*10^(-5)*(1.003*10^5))-1);
printf("\nValue of Remf is %d",Remf);

umf = Remf*(3*10^(-3))/(3*10^(-3)*1100);
printf("\nminimum fluidisation velocity is %.1f mm/sec",umf*1000);


 