clear;
clc;
close;
disp("Example 3.3")
V9=4000 //in m/s
p9=200*10^3 //in Pa
p0=100*10^3 // in Pa
D=2 //in meter
m=200+50 // in kg/s
A=%pi*(D^2)/4 //nozzle exit area
//let p=(p9-p0)*A i.e. pressure thrust
p=(p9-p0)*A
mt=m*V9 //momentum thrust.
t=p+mt //rocket gross thrust
disp(p,"(a)The pressure thrust in SI units(N):")
disp(t,"(b)The rocket gross thrust in SI units(N):")