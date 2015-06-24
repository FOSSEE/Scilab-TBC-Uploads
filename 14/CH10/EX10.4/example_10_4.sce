//Chapter 10
//Example 10.4
//Page 265
//faultthrubus
clear;clc;
//Given
Pg1 = 270e6;
Pg3 = 225e6;
Pbase = 100e6;
V = 1;
X = 0.3;
Xg_b1 = X * Pbase /Pg1;
Xg_b3 = X * Pbase /Pg3;
y10 = 1 / (%i * Xg_b1);
y30 = 1 / (%i * Xg_b3);
y12 = 1 / (%i * 0.168);y15 = 1 / (%i * 0.126);
y23 = 1 / (%i * 0.126);y34 = 1 / (%i * 0.336);
y35 = 1 / (%i * 0.210);y45 = 1 / (%i * 0.252);
//Ybus by inspection
Ybus = zeros(5,5);
Ybus(1,1) = y10 + y12 + y15;
Ybus(2,2) = y12 + y23;
Ybus(3,3) = y30 + y23 + y35 + y34;
Ybus(4,4) = y34 + y45;
Ybus(5,5) = y45 + y15 + y35;
Ybus(1,2) = -y12;Ybus(2,1) = Ybus(1,2);Ybus(1,3) = 0;Ybus(1,4) =0;
Ybus(2,3) = -y23;Ybus(3,2E) = Ybus(2,3);Ybus(2,5) = 0;Ybus(2,4) =0;
Ybus(3,4) = -y34;Ybus(4,3) = Ybus(3,4);Ybus(3,1) = 0;
Ybus(4,5) = -y45;Ybus(5,4) = Ybus(4,5);Ybus(4,1) = 0;Ybus(4,2) = 0;
Ybus(1,5) = -y15;Ybus(5,1) = Ybus(1,5);Ybus(5,2) = 0;
Ybus(3,5) = -y35;Ybus(5,3) = Ybus(3,5);
disp(Ybus,'Ybus')
Zbus = inv(Ybus);
disp(Zbus,'Zbus')
I11 = V / Zbus(4,4);
disp(I11,'The subtransient current in a three-phase fault on bus 4 in per unit is')
V3 = V - I11 * Zbus(3,4);
V5 = V - I11 * Zbus(5,4);
disp(V3,V5,'Voltages at bus 3 and 5 repectively in per unit')
I3 = V3 * y34;
I5 = V5 * y45;
disp(I3,'Currents to fault from bus 3 in per unit')
disp(I5,'Currents to fault from bus 5 in per unit')
disp(I3 + I5,'Total current to fault in per unit')