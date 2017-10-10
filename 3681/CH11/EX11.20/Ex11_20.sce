// Calculating the kVA output of the machine
clc;
disp('Example 11.20, Page No. = 11.56')
// Given Data
// 3 phase turbo-alternator
rpm = 3000;// R.p.m.
f = 50;// Frequency (in Hz)
L = 0.94;// Core length (in meter)
Bav = 0.45;// Average gap density (in Wb per meter sqaure)
ac = 25000;// Ampere conductors per meter
Va = 100;// Peripheral speed of rotor (in meter per second)
lg = 20;// Length of air gap (in mm)
Kw = 0.95;// Winding factor
// Winding is infinitely distributed with a phase spread of 60 degree
// Calculation of the kVA output of the machine
ns = rpm/60;// R.p.s
Dr = Va/(%pi*ns);// Diameter of rotor (in meter)
D = Dr+(2*lg*10^(-3));// Stator bore (in meter)
// for full pitch
Kd = 0.955;// Distribution factor
Kp = 1;// Pitch factor
Kw = Kd*Kp;// Winding factor
Q = 11*Kw*Bav*ac*D*D*L*ns*10^(-3);// kVA output
disp(Q,'(a) kVA output of machine (kVA)=');
// for chorded by 1/3 pole pitch
alpha = 180/3;// Angle of chording
Kp = cos(alpha*%pi/180/2);// Pitch factor
Kd = 0.955;// Distribution factor
Kw = Kd*Kp;// Winding factor
Q = 11*Kw*Bav*ac*D*D*L*ns*10^(-3);// kVA output
disp(Q,'(b) kVA output of machine (kVA)=');
//in book answers are 2480 kVA and 2147 kVA respectively.  The provided in the textbook is wrong
