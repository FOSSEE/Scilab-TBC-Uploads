//Example 8_3
clc;clear;funcprot(0);
// Given values
rho=62.36;// lbm/ft^3
mu=7.536*10^-4;// lbm/ft.s
D=2/12;// ft
v=0.2;// ft^3/s
L=200;// ft
g=32.2;// ft/s^2

//Calculation
A_c=(%pi*D^2)/4;//  ft^2
V=v/A_c;// Average velocity in ft/s
Re=(rho*V*D)/(mu);// Reynolds number
// Re is greater than 4000. Therefore, the flow is turbulent. The relative roughness of the pipe is calculated using Table 8–2, (epsilon/D)=e
E=0.000007;
e=E/(D);
//To avoid any reading error, we determine f from the Colebrook equation:(1/sqrt)=-2.0*log10*((e/3.7)+(2.51/(Re*sqrt(f)))
// f=y(1)
function[X]=frictionfactor (y)
     X(1)=(-2.0*log10((0.000042/3.7)+(2.51/(126400*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
y=[0.001];
z=fsolve(y,frictionfactor);// Friction factor
gradP_L1=(z*(L/D)*(rho*(V^2)/2))*(1/32.2);// lbm/ft^2
gradP_L=gradP_L1/144;// psi
printf('The pressure drop,gradP_L=%0.0f lbf/ft^2=%0.1f psi \n',gradP_L*144,gradP_L);
h_L=(z*(L/D)*(V^2/(2*g)));// ft
printf('The head loss,h_L=%0.1f ft\n',h_L);
W_p=(v*gradP_L1)/0.737;// W
printf('The required power input,W_pump=%0.0f W \n',W_p);
// The answer vary due to round off error
