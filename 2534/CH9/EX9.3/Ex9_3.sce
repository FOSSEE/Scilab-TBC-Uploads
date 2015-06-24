//Ex9_3
clc
disp("Vp = (a^2)*sigma/(2*apsilent*micro_p)")//piunch off voltage
h = 2*10^-4      //channel height in centimeters
a= h/2       //channel width in centimeters
rho = 1         //resistivity in ohm_cm
sigma = 1/rho    //conductivity in mho/cm
micro_p = 1800      //mobility in cm_sq/Vs
apsilent_r = 16  //relative permiability in F/cm of germanium
apsilent_not=8.854*10^-14  //permiability in vaccum in F/cm
disp("a = "+string(a)+"cm")
disp("rho = "+string(rho)+"ohm-cm")
disp("sigma = "+string(sigma)+"mho/cm")
disp("micro = "+string(micro_p)+"cm_sq/Vs")
disp("apsilent_r = "+string(apsilent_r)+"F/cm")
disp("apsilent_not = "+string(apsilent_not)+"F/cm")
Vp = (a^2)*sigma/(2*apsilent_r*apsilent_not*micro_p) // pinch off voltage for germanium p_channel FET
disp("Vp = "+string(Vp)+"V")
