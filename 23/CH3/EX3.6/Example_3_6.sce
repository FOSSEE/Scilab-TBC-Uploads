clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  


//Example 3.6
//Caption : Program To find (a)Kinetic energy Change (b)change in temperature 

//Given values
n=1;//Molar Rate(mol/s)
D=5;//inner Diameter(cm)
R=83.14;
Cp=(7/2)*R;
M=29*10^-3;//Molar mass(g/mol)
T=293.15;//temperature=293.15K(20`C)
P1=6;//Upstream Pressure
P2=3;//Downstream Pressure

//Solution
//from Eq.(2.24b)
A=(%pi/4)*((D*10^-2)^2);//Area(m^2)
//upstream molar Volume
V1=(R*T/P1)*10^-6;//m^3/mol
u1=n*V1/A;//velocity(m/s)
V2=2*V1;
u2=2*u1;
del_KE=approx(n*M*((u2^2)-(u1^2))/2,3);//J/s(W)
del_T=approx(-del_KE/(Cp*0.1),4);//K
disp('W or J/s',del_KE,'Change in KE ')
disp('K',del_T,'Change in Temperature ')

//End