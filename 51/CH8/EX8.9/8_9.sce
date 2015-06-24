clc;
clear;
T=140;//degree F
sw=53.7;//lb/(ft^3)
vis=8/100000;//lb*sec/(ft^2)
l=799;//miles
D=4;//ft
Q=117;//(ft^3)/sec
V=9.31;//ft/sec
//energy equation=> hp=hL=f*(l/D)*((V^2)/(2*g))
f=0.0125;
hp=f*(l*5280/D)*((V^2)/(2*32.2));//ft
Pa=sw*Q*hp/550;//hp
disp("hp",Pa,"The horsepower required to drive the system=")
dia=2:0.01:6;
count=1;
for i=2:0.01:6
    power(count)=sw*Q*(f*(l*5280/i)*(((Q/(%pi*(i^2)/4))^2)/(2*32.2)))/550;
    count=count+1;
end
plot2d(dia,power,rect=[0,0,6,4000000])
xtitle("Pa vs D","D, ft","Pa, hp")