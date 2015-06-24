clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  


//Example 6.9
//Caption : Program to Find Residual Enthalpy and Entropy and V by Lee/Kesler


//Given Values
T=450;//[K]
P=140;//[bar]

//pseudo parameters
Tc1=304.2;//[K]
Tc2=369.8;//[K]
Pc1=73.83;//[bar]
Pc2=42.48;//[bar]
Tpc=(0.5*Tc1)+(0.5*Tc2);
Ppc=(0.5*Pc1)+(0.5*Pc2);

Tpr=T/Tpc;
Ppr=P/Ppc;

Z0=0.697;
Z1=0.205;

omega1=0.224;
omega2=0.152;
omega=(0.5*omega1)+(0.5*omega2);

Z=Z0+(omega*Z1);

V=approx(Z*R*T*10/P,1);//[cm^3/mol]

//(H/RT)0=-1.73 (H/RT)1=-0.169
H=approx(R*Tpc*(-1.73+(omega*-0.169)),0);//[J/mol]
S=approx(R*(-0.967+(omega*-0.330)),2);//[J/mol/K]

disp('cm^3/mol',V,'Volume(V)=')
disp('J/mol',H,'Residual Enthaply(H)=')
disp('J/mol/K',S,'Residual Entropy(S)=')

//End