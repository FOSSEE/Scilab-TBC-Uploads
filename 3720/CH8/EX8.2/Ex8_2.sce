//Example 8_2
clc;clear;funcprot(0);
// Given values
rho=62.42;//lbm/ft^3
mu=1.038*10^-3;// lbm/ft.s
D=0.01;// ft
L=30;// ft
V_avg=3;// ft/s
g=32.2;// Ft/s^2

//Calculation
//(a)
Re=(rho*V_avg*D)/mu;// Reynolds number
f=64/Re;// Friction factor
h_l=f*(L/D)*((V_avg^2)/(2*g));// ft
printf('(a)The head loss,h_l =%0.1f ft\n',h_l);
//(b)
gradP_l=(f*(L/D)*rho*(V_avg^2/2))/32.2;// lbf/ft^2
gradP_1=(gradP_l/144);// psi
printf('(b)The pressure drop,gradP_l=%0.0f lbf/ft^2=%0.2f psi\n',gradP_1*144,gradP_1);
//(c)
A_c=(%pi*D^2)/4;// ft^2
v=V_avg*A_c;// ft^3/s
W_pump=v*gradP_l/0.737;// W
printf('(c)The pumping power requirements,W_pump=%0.2f W\n',W_pump);
// The answer vary due to round off error
