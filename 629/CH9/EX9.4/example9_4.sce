clear
clc
//Example 9.4 RESISTANCE CALCULATION FOR LAMINAR BOUNDARY LAYER ON A FLAT PLATE
//To find Approx Value
function [A]= approx (V,n)
    A= round(V*10^n)/10^n; //V-Value, n-to what place
    funcprot (0)
endfunction
L=6; //[ft]
v=10^-4; //viscosity [ft^2/s]
Uo=1; //[ft/s]
Re=Uo*L/v //Reynolds number 
Cf=approx(1.33/Re^(1/2),4)
B=4; //[ft]
S=0.86;
rho=S*1.94 //[slugs/ft^3]
Fs=approx((Cf*B*L*rho*Uo^2)/2,3) //shear force [lbf]
printf("\nThe shear resistance on one side of the plate = %.3f lbf.\n",Fs)