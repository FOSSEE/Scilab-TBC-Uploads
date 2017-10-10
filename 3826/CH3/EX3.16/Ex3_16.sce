//Example 3_16 page no:210
clc;
//given
power_3ph = 30000;//in W
voltage = 400;//in V
thickness = 0.254;//in mm
wire_temp = 1100;//in C
charges = 700;//in C
emissitivity = 0.9;
rad_efficiency = 0.5;
power = power_3ph/3;//power per phase
R = voltage^2/(3*power);
lBYw = (R*1000*thickness)/1.016;
heat = 5.72 * 10^4 * emissitivity * rad_efficiency*((1373/1000)^4-(973/1000)^4);
wl = power/(2*heat);
l = sqrt(lBYw*wl);
w = wl/l
w = w*1000;//converting to mm
disp(w,"the suitable width of the strip is(in mm)");
T1 = 1000 * nthroot(((heat/(2.56*10^4))+0.0074),4);
disp(T1,"temperature of the wire when the charge is cold is(in K)");
//the result vary slightly with textbook hence values are rounded off in textbook
