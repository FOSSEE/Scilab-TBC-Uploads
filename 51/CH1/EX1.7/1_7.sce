clc;
clear;
s=550;//(mph)
h=35000;//ft
T=-66;//degrees farenheit
k=1.40;
//speed of sound c=(kRT)^0.5
c=((k*1716*(T+460)))^0.5;//ft/s
disp("ft/s",c,"speed of sound c=")
//speed of sound V=(s m/hour)*(5280 ft/m)/(3600 s/hour)
V=s*5280/3600;//ft/s
disp("ft/s",V,"air speed =")
ratio=V/c;//Mach number
disp(ratio,"ratio of V/c = Mach Number=")