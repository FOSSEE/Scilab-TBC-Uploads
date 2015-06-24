clc;
clear;
Q=9;//gal/min
l=5;//ft
b=2;//ft
H=1.5;//ft
//continuity equation to water: integral of m= d*((h*b*l)+(H-h)*A); where A is cross-sectional area of faucet
//m=d*(b*l-A)*dh/dt, where dh/dt= hrate
//m=d*Q
//since A<<l*b, it can be neglected
fn=poly([0 (1.94*l*b)],"h","c");
x=derivat(fn);//x=m/(dh/dt)
hrate=Q*12*1.94/(x*7.48);
disp("in./min",hrate,"Time rate of change of depth of water in tub =")
d=0:30;
for i=0:30
    hrate1(i+1)=(Q*12*12*12)/(((l*b*12*12)-(%pi*(i^2)/4))*7.48);
end
plot2d(d,hrate1,rect=[0,0,30,3])
xtitle("graph","D, in.","dh/dt, in./min")
