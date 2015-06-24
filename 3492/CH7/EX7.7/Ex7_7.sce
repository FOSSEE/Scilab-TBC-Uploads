clc
//Chapter7
//Ex_7
//Given
//at 60 Hz
f=60 //Hz
E=100*10^3*10^2 //in V/m
//values taken from table 7.3
epsilon_o=8.85*10^-12 //in F/m
epsilon_r_HLPE=2.3
epsilon_r_Alumina=8.5
//let x=tan(delta)
x_HLPE=3*10^-4
x_Alumina=1*10^-3
W_vol_HLPE=2*%pi*f*E^2*epsilon_o*epsilon_r_HLPE*x_HLPE //in W/m3
W_vol_HLPE=W_vol_HLPE/10^3 //in mW/cm3
disp(W_vol_HLPE,"Heat dissipated per unit volume of HLPE at 60 Hz in mW/cm3 is")
W_vol_Alumina=2*%pi*f*E^2*epsilon_o*epsilon_r_Alumina*x_Alumina
W_vol_Alumina=W_vol_Alumina/10^3 //in mW/cm3
disp(W_vol_Alumina, "Heat dissipated per unit volume of Alumina at 60 Hz in mW/cm3 is")
//at 1 MHz
f=10^6 //Hz
x_HLPE=4*10^-4
x_Alumina=1*10^-3
W_vol_HLPE=2*%pi*f*E^2*epsilon_o*epsilon_r_HLPE*x_HLPE //in W/m3
W_vol_HLPE=W_vol_HLPE/10^6 //in W/cm3
disp(W_vol_HLPE,"Heat dissipated per unit volume of HLPE at 1 MHz in mW/cm3 is")
W_vol_Alumina=2*%pi*f*E^2*epsilon_o*epsilon_r_Alumina*x_Alumina
W_vol_Alumina=W_vol_Alumina/10^6 //in W/cm3
disp(W_vol_Alumina, "Heat dissipated per unit volume of Alumina at 1 MHz in mW/cm3 is")
disp("The heats at 60Hz are small comparing to heats at 1MHz")

