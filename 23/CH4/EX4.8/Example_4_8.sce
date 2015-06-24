clc;
clear;

//Example 4.8
//Caption : Program to Find the Heat Requirement for the Reactor 

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=MCPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))
  funcprot(0);
endfunction
    

//CH4 + H2O --> CO + 3H2 (A)
//CH4 + 2H2O --> CO2 + 4H2  (B)
del_H_A=205813;//J
del_H_B=164647;//J
//0.87 mol of CH4 for (A) (1-0.87)mol of CH4 for (B)
del_H_298=(0.87*del_H_A)+(0.13*del_H_B);
R=8.314;
T0=298.15;
T_A=600;//Cooled
T_B=1300;//Heated
//Moles of reactants (CH4,H2O)
nr=[1;2];
//Moles of Products (CO,H2,CO2,H2O)
np=[0.87;3.13;0.13;0.87];
//For Reactants
//for CH4
I1=MCPH(T0,T_A,1.702,9.081*(10^-3),-2.164*(10^-6),0);
//For H2O
I2=MCPH(T0,T_A,3.470,1.450*(10^-3),0,0.121*(10^5));
del_Hr=R*((nr(1,1)*I1)+(nr(2,1)*I2))*(T0-T_A);//J
//For Products
//for CO
I1=MCPH(T0,T_B,3.376,0.557*(10^-3),0,-0.031*(10^5));
//For H2
I2=MCPH(T0,T_B,3.249,0.422*(10^-3),0,0.083*(10^5));
//for CO2
I3=MCPH(T0,T_B,5.457,1.045*(10^-3),0,-1.157*(10^5));
//For H2O
I4=MCPH(T0,T_B,3.470,1.450*(10^-3),0,0.121*(10^5));
del_Hp=R*((np(1,1)*I1)+(np(2,1)*I2)+(np(3,1)*I3)+(np(4,1)*I4))*(T_B-T0);//J
//del_H
del_H=del_H_298+del_Hr+del_Hp;
Q=approx(del_H,-1);
disp('J',Q,'Heat Required');

//End