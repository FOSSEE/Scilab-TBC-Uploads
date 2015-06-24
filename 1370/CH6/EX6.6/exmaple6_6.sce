//example6.6
clc
disp("The meter current (I_m)=20 mA")
disp("Drop across meter, (V_m)=200 mV")
disp("Now, (V_m)=[(I_m)*(R_m)]")
disp("Therefore, 200 mV = (20 mA)(R_m)")
r=200/20
disp(r,"Therefore, (R_m)[in ohm]=")
disp("i) For using it as an ammeter, I=200 A")
r=(200*10^-3)/(200-(20*20^-3))
format(6)
disp(r,"R_sh(in ohm)=[(I_m)*(R_m)]/[I-(I_m)]=")
disp("This is the required shunt.")
disp("ii) For using it as a voltmeter, V=500 V")
disp("Therefore, (R_s)=V/(I_m) - (R_m)")
r=(500/(20*10^-3))-10
format(8)
disp(r,"= (500/(20*10^-3))-10 = ")
disp("This is the required multiplier.")
