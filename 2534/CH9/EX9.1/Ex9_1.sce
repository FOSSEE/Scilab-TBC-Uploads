//Ex9_1
clc
h = 5*10^-4      //channel height in centimeters
a= (1/2)*h       //channel width in centimeters
rho = 10         //resistivity in ohm_cm
sigma = 1/rho    //conductivity in mho/cm
micro_p = 500      //mobility in cm_sq/Vs
apsilent_r = 12  //relative permiability in F/cm of silicon
apsilent_not=8.854*10^-14  //permiability in vaccum in F/cm
disp("a = "+string(a)+"cm")
disp("sigma = "+string(sigma)+"mho/cm")
disp("micro_p = "+string(micro_p)+"cm-sq/Vs")
disp("apsilent_r = "+string(apsilent_r)+"F/cm")
Vp = (a^2)*sigma/(2*apsilent_r*apsilent_not*micro_p) // pinch off voltage for silicon p channel FET
disp("Vp = (a^2)*sigma/(2*apsilent_r*apsilent_not*micro_p)")
disp("Vp = "+string(Vp)+"V")
