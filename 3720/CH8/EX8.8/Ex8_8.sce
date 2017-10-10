//Example 8_8
clc;clear;funcprot(0);
D=0.05;//m
v=0.006;// m^3/s
K_Lentrance=0.5;
K_Lelbow=0.3;
K_Lvalve=0.2;
K_Lexit=1.06;// The loss coefficients
L=89;// m
z_2=4;// m
//Properties
rho=999.7;// kg/m^3
mu=1.307*10^-3;// kg/m.s
epsilon=0.00026; // m
g=9.81;// m/s^2

//Calculation
A_c=(%pi*D^2)/4;//m^2
V=v/A_c;// m/s
Re=(rho*V*D)/mu;
e=epsilon/D;
// f=y(1)
function[X]=frictionfactor(y);
    X(1)=(-2.0*log10((e/3.7)+(2.51/(Re*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
y=[0.01];
z=fsolve(y,frictionfactor);
f=z;//friction factor
SigmaK_L=K_Lentrance+(2*K_Lelbow)+K_Lvalve+K_Lexit;
h_l=((f*(L/D))+(SigmaK_L))*(V^2/(2*g));// The total head loss in m
z_1=z_2+h_l;// m
printf('The elevation of the source,z_1=%0.1f m\n',z_1);
// The answer vary due to round off error
