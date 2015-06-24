clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 8.1
//Caption : Program to Find the Thermal efficiency in a Steam Turbine

//Given Values
//(a)-As in Example(7.6)
P1=8600;//[KPa]
T1=773.15;//[K]
//values of Enthalpy and Entropy from Steam tables
H1=3391.6;//[KJ/Kg]
S1=6.6858;//[KJ/Kg/K]

P2=10;//[KPa]
S2i=S1;//Isentropic

S2_liquid=0.6493;
S2_vapor=8.1511;
H2_liquid=191.8;
H2_vapor=2584.8;

x2=(S2i-S2_liquid)/(S2_vapor-S2_liquid);

H2i=H2_liquid+(x2*(H2_vapor-H2_liquid));
del_Hs_1=approx((H2i-H1),1);//[KJ/Kg]
Ws=del_Hs_1;
H3i=H2i;
H4=H2_liquid;
//Applying Eqn(8.2)
Q_condenser=approx((H4-H3i),1);//heat Of condenser  [KJ/Kg]
//From Example(7.10)
//Properties of saturated liquid water @ 318.15K
V=1010;//[cm^3/Kg]
V=1010*10^-6;//[m^3/Kg]
Beta=425*10^-6;//[K^-1]
Cp=4.178;//[KJ/Kg/K]

//From Eqn(7.24)
Ws_2=approx((V*(P1-P2)),1)//[KPa m^3/Kg]
del_Hs_2=Ws_2;
H1=H4+del_Hs_2;
//Enthalpy Of saturated steam at 8600KPa and 773.15K
H2=3391.6;//[KJ/Kg]
//Applying Eqn(8.2)
Q_boiler=H2-H1;

Ws_Rankine=-Q_boiler-Q_condenser;
eta=approx((abs(Ws_Rankine)/Q_boiler),3);
disp('(a)Rankine Cycle')
disp(eta,'Thermal Efficiency')

//(b)

eta_b=0.75;

del_H_1=del_Hs_1*eta_b;
Ws_turbine=del_H_1;
H3=H2+del_H_1;
Q_condenser=H4-H3;

//By Example 7.10 for the pump
Ws_pump=del_Hs_2/eta_b;
del_H_2=Ws_pump;
Ws_net=Ws_turbine+Ws_pump;
H1=H4+del_H_2;

Q_boiler=H2-H1;
efficiency=approx(abs(Ws_net)/Q_boiler,4);
disp('(b)Practical cycle with 0.75 efficiency')
disp(efficiency,'Thermal Efficiency')

//(c)
//By rating of Power Cycle
rWs_net=-80000;//[KJ/s]  Power Rating 
rm=approx(rWs_net/Ws_net,2);

rQ_boiler=approx(rm*Q_boiler/1000,1);//[MW]
rQ_condenser=approx(rm*Q_condenser/1000,1);//[MW]
disp('(c)By rating of Power Cycle');
disp('kg/s',rm,'Steam Rate')
disp('MW',rQ_boiler,'Heat Transfer rate in boiler')
disp('MW',rQ_condenser,'Heat Transfer rate in condenser')

//End