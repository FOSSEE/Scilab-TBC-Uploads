clear;
clc;
//Example 16.15
Vdd=3;
Kn=60;
Vtnd=0.5;
//W/L=x
xd=2;
Vtnl=-1;
xl=0.5;
R=2;//(MOhm)
Vgsl=0;
//solution with Depletion load
iD=Kn*xl*(Vgsl-Vtnl)^2/2;
printf('\nfrain currents in M1 and M3 =%.fmicroA\n',iD)
P=iD*Vdd;
printf('\npower dissipation in the circuit=%.f microW\n',P)
//iD=Kn/2*x*(2*Vgsd-Vtnd)Vdsd-Vdsd^2
Q=poly(0,'Q');
p=poly([0.25 -5 1],'Q','c');
roots(p)
disp("Q=50.5 (mV)")
//solution with Resistor load
//(Vdd-Q)/R=Kn/2*xd*(2*Vgsd-Vtnd)Q-Q^2
Q=poly(0,'Q');
p=poly([3 -599 120],'Q','c');
roots(p)
Q=0.005;
disp("Q=5 (mV)")
iD=(Vdd-Q)/R;
printf('\ndrain current =%.2f microA\n',iD)
P=iD*Vdd;
printf('\npower dissipation in the circuit =%.2f microW\n',P)
