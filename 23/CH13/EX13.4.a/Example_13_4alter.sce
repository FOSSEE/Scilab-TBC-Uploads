clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 13.4  Alternate
//Caption : Alternate Program to 13.4

T=[298.15,418.15,593.15];
t=approx(T/T(1),4);
R=8.314;


//C2H4(g) + H2O(g) -->  C2H5OH(g)

//Values From Table C.1 At T=298.15K

A_ethanol=3.518;
A_ethene=1.424;
A_water=3.470;

B_ethanol=20.001*10^-3;
B_ethene=14.394*10^-3;
B_water=1.450*10^-3;

C_ethanol=-6.002*10^-6;
C_ethene=-4.392*10^-6;
C_water=0;

D_ethanol=0;
D_ethene=0;
D_water=0.121*10^5;

dA=A_ethanol-A_ethene-A_water
dB=B_ethanol-B_ethene-B_water
dC=C_ethanol-C_ethene-C_water
dD=D_ethanol-D_ethene-D_water

// Values from Table C.4 at T=298.15K
H_ethanol=-235100;//[J/mol]
H_ethene=52510;//[J/mol]
H_water=-241572;//[J/mol]

G_ethanol=-168490;//[J/mol]
G_ethene=68460;//[J/mol]
G_water=-228572;//[J/mol]

dHo=H_ethanol-H_ethene-H_water
dGo=G_ethanol-G_ethene-G_water

//Using Eqn(13.21)
Ko=approx(exp(-dGo./(R*T(1))),3)
K0=Ko*ones(1,3);
//Using Eqn(13.22)
K1=exp((dHo/(R*T0))*(1-(T(1)./T)));
//Using Eqn(13.24)
K2=approx(exp((dA.*(log(t)-((t-1)./t)))+(0.5*dB*T(1).*((t-1).^2)./t)+((1/6)*dC*T(1)*T(1).*((t-1).^2).*(t+2)./t)+(0.5*dD.*((t-1).^2)./((T(1)^2).*(t).^2))),4);

K=K0.*K1.*K2;

Ans=[T',t',K0',K1',K2',K'];
disp(Ans,'    T/K       t          K0          K1         K2         K')

//End