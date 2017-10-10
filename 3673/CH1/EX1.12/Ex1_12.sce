//Example 1_12 page no:14
clc
R1=5;//Resistance in ohm
R2=2;//Resistance in ohm
R3=1;//Resistance in ohm
R4=2;//Resistance in ohm
V=50;//supply voltage
Rt=R1+R2+R3+R4;//total resistance
P=V*V/Rt;//calculating total power
disp(P,"Total power in the circuit (in watts)")
current=V/Rt;
P1=current^2*R1;
disp(P1,"power absorbed in 5 ohms (in watts)")
P2=current^2*R2;
disp(P2,"power absorbed in 2 ohms (in watts)")
P3=current^2*R3;
disp(P3,"power absorbed in 1 ohms (in watts)")
P4=current^2*R4;
disp(P4,"power absorbed in 2 ohms (in watts)")
