// Example 9_4
clc;funcprot(0);
// Given data
r=10;// The compression ratio
T_1=200+273;// K
P_1=200;// kPa
w_net=1000;// kJ/kg
c_v=0.717;// kJ/kg.K
R=0.287;// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
T_2=T_1*(r)^(k-1);// K
function[X]=temperature(y)
              X(1)=w_net-((c_v*(T_1-T_2))+(c_v*(y(1)-y(2))))
              X(2)=y(1)-(y(2)*(r)^(k-1));
endfunction
y=[1000 1000];
z=fsolve(y,temperature);
T_3=z(1);// K
T_4=z(2);// K
n_carnot=(1-(T_1/T_3));// %
v_1=(R*T_1)/P_1;// m^3/kg
// v_2=v_1/r;
MEP=w_net/(0.9*v_1);// kPa
printf("\nThe maximum possible efficiency,n_carnot=%0.3f or %2.1f percentage.\nMEP=%4.0f kPa",n_carnot,n_carnot*100,MEP);
