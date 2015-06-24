clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 7.6
//Caption : Program to Find the state of Steam at Discharge & Mass Rate of Flow

//Given Values
P1=8600;//[KPa]
T1=773.15;//[K]
//values of Enthalpy and Entropy from Steam tables
H1=3391.6;//[KJ/Kg]
S1=6.6858;//[KJ/Kg/K]
eta=0.75;
P2=10000;//[KPa]
rW=56400;//[KW] or [KJ/s]
S2i=S1;//Isentropic

S2_liquid=0.6493;
S2_vapor=8.1511;
H2_liquid=191.8;
H2_vapor=2584.8;

x2=(S2i-S2_liquid)/(S2_vapor-S2_liquid);

H2i=H2_liquid+(x2*(H2_vapor-H2_liquid));
del_Hs=H2i-H1;//[KJ/Kg]
del_H=eta*del_Hs;

H2=approx(H1+del_H,0);//[KJ/Kg]
x2=(H2-H2_liquid)/(H2_vapor-H2_liquid);
S2=approx(S2_liquid+(x2*(S2_vapor-S2_liquid)),4);

rm=approx(-rW/(H2-H1),2);//[Kg/s]
disp('KJ/Kg',H2,'Enthalpy')
disp('KJ/Kg/K',S2,'Entropy')
disp('Kg/s',rm,'Rate of mass change')

//End