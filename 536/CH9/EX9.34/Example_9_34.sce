clc;
clear;
printf('Example 9.34\n');


T1=420;//temperature of steam
k=0.1;//Thermal conductivity
T2=285; //Ambient temperature
h=10;//the coefficient of heat transfer from the outside of the lagging to 
     //the surroundings
//determining Q/l from equation 9.21 and equating it to heat loss from the
//outside of the lagging we get
//(Q/l)=84.82/(log(d_o/0.1)+(0.02/d_o)) W/m
//using various equations we finally get an equation in terms of d_o and we
// will solve it by using fsolve
function [f]=F(d_o)
    f(1)=(1/(log(d_o/0.1)+(0.02/d_o))^2)-(2.35*(d_o^3)/(d_o-0.02));
    funcprot(0);
endfunction
d_o=1;
ans=fsolve(d_o,F);
E_t=(ans-0.1)/2;
printf("\n Economic thickness of lagging = %d mm",E_t*1e3);