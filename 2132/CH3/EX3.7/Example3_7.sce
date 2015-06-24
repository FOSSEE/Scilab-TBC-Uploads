//Example 3.7
clc;
clear;
close;
format('v',7);
//Given data :
b=3;//in meter
h=3;//in meter
S_oil=0.8;//(specific gravity of oil)
A=1/2*h*b;//in m^2
x_bar=2/3*3;//in meter
SW_water=9.81*1000;//in N/m^3
SW_oil=SW_water*S_oil;//in N/m^3
F_surface=SW_oil*A*x_bar;//in kN
IG=b*h^3/36;//in m^3
h_bar=IG/A/x_bar+x_bar;//in meter
disp(h_bar,"Force shall act at depth of centre of pressure. This depth in meter is : ");
