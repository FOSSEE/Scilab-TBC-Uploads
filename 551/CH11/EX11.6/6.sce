clc
v_CO=0.05;
v_CO2=0.10;
v_H2=0.50;
v_CH4=0.25;
v_N2=0.10;

V_fuel=1;

V_O2=v_CO/2+v_H2/2+2*v_CH4; //Volume of O2 needed

V_air=V_O2*100/21; //Volume of air required

V_N2=V_air*79/100; //Volume of nitrogen in the air

V=v_CO + v_CO2 + v_CH4 + v_N2 + V_N2; //Dry combustion products

O2=6;
V_excess=O2*V/(21-O2);

V_total=V_air+V_excess;

ratio=V_total/V_fuel;
disp("Air fuel ratio=")
disp(ratio)