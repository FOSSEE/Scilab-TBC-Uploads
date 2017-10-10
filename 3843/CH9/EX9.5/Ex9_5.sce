// Example 9_5
clc;funcprot(0);
// Given data
r=18;// The compression ratio
T_1=200+273;// K
P_1=200;// kPa
w_net=1000;// kJ/kg
c_p=1.00;// kJ/kg.K
c_v=0.717;// kJ/kg.K
R=0.287;// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
v_1=(R*T_1)/P_1;// m^3/kg
v_2=v_1/r;// m^3/kg
T_2=T_1*(r)^(k-1);// K
P_2=P_1*(r)^(k);// kPa
function[X]=temperature(y)
              X(1)=w_net-((c_p*(y(1)-T_2))+(c_v*(T_1-y(2))));
              v_4=v_1;// m^3/kg
              X(2)=y(2)-(y(1)*(y(3)/v_4)^(k-1));
              X(3)=(y(1)/y(3))-(T_2/v_2);
endfunction
y=[1000 1000 0.01];
z=fsolve(y,temperature);
T_3=z(1);// K
T_4=z(2);// K
v_3=z(3);// m^3/kg
r_c=v_3/v_2;// The cut off ratio
n=(1-((1/(r^(k-1)))*(((r_c^k)-1)/(k*(r_c-1)))));// The thermal efficiency
MEP=w_net/(v_1-v_2);// kPa
r_otto=v_1/v_3;// The compression ratio for otto cycle
n_otto=(1-(1/(r^(k-1))));// The thermal efficiency for otto cycle
printf("\nThe thermal efficiency,n=%0.3f or %2.1f percentage.\nMEP=%3.0f kPa. \nThe thermal efficiency of an otto cycle operating with the same maximum pressure,n_otto=%0.3f or %2.1f percentage.",n,n*100,MEP,n_otto,n_otto*100);
// The answer provided in the text book is wrong
