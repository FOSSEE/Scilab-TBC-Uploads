clear all;
clc;
//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  
//Example 13
//Given:
R=8.314; //ideal gas constant(kJ/kmol K)
Cv=20.8; //specific heat capacity at constant volume(kJ/kmol K)
Cp=29.1; //specific heat capacity at constant pressure(kJ/kmol K)
P1=10; //initial pressure(bar)
T1=280; //initial temperature in K
P2=1; //final pressure(bar)
T2=340; //final temperature(K)
//To determine the change in internal energy and change in enthalpy
//Solution
n=1; //basis: 1 kmol of ideal gas
V1=approx((n*R*T1)/(P1*100),3); //initial volume in m^3
V2=approx((n*R*T2)/(P2*100),3); //final volume in m^3
//Assuming the change in state is occuringalong the following two step process
//1. A constant volume process in which the pressure is reduced to the final value P2 and the temperature gets reduced to T2
//Let Po and Vodenote the pressure and volume of system after this step
Po=P2; 
Vo=V1;
To=approx((Po*100*Vo)/(n*R),0);
U1=approx(Cv*(To-T1),1);
H1=approx(U1+(V1*100*(P2-P1)),1);
W1=0;
Q1=U1;
//2. A constant pressure process in which the gas is heated to the final temperature T2 and the final volume V2
H2=approx(Cp*(T2-To),1);
U2=approx(H2-100*(V2-V1),1);
Q2=H2;
W2=Q2-U2;
//For actual process
U=U1+U2; //change in internal energy(kJ)
H=H1+H2; //change in enthalpy(kJ)
disp('kJ',U,'Change in internal energy');
disp('kJ',H,'Change in enthalpy');
//end