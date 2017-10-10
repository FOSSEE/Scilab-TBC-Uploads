clear
clc
//Example 11.4 TERMINAL VELOCITY OF A SPHERE IN WATER
//To find Approx Value
function [A]= approx (V,n)
    A= round(V*10^n)/10^n; //V-Value, n-to what place
    funcprot (0)
endfunction
d=0.02; //diameter [m]
A=%pi*(d^2)/4 //area [m^2]
Vol=%pi*(d^3)/6 //volume [m^3]
v=10^-6; //viscosity [m^2/s]
//Specific weights
g_sphere=12.7*10^3; //[N/m^3]
g_water=9.79*10^3; //[N/m^3]
rho=998; //density [kg/m^3]
//Force equilibrium, F_drag+F_buoyancy=W
//F_drag=CD*A*rho*Vo^2/2
W=g_sphere*Vol //weight [N]
F_b=g_water*Vol //buoyant force [N]
V(1)=0;
//Assume initial value of Vo=1
V(2)=1;
//Iterate until Vo reaches a constant value
for i=2:1:7 //say 6 iterations
if(V(i)~=V(i-1))
    Re=V(i)*d/v;
    CD=24*(1+0.15*(Re^0.687))/Re +0.42/(1+4.25*10^4*Re^(-1.16));
    V(i+1)=approx((2*(W-F_b)/(CD*rho*A))^0.5,3);
else
    Vo=V(i)
    break;
end
end
printf("\nThe terminal velocity Vo = %.3f m/s.\n",Vo)