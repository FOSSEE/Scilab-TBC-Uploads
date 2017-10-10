// Calculating the kVA output of a single phase transformer
clc;
disp('Example 5.3, Page No. = 5.78')
// Given Data
D = 0.4;// Distance between core centres (in meter)
f = 50;// Frequency (in Hz)
Bm = 1.2;// Flux density of core (in Wb per meter square)
Kw = 0.27;// Window space factor
s = 2.3;// Current density (in Ampere per mm square)
R1 = 2.8;// Ratio of core height and distance between core centres
R2 = 0.56;// Ratio of circumscribing circle and distance between core centres
R3 = 0.7;// Ratio of net iron area and area of circumscribing circle
// Calculation of the kVA output of a single phase transformer
Hw = R1*D;// Core heightor window height (in meter)
d = R2*D;// Diameter of circumscribing circle (in meter)
Ww = D-d;// Width of window (in meter)
Aw = Hw*Ww;// Area of window (in meter square)
A = (%pi/4)*d*d;// Area of circumscribing circle (in meter square)
Ai = R3*A;// Net iron area (in meter square)
Q = 2.22*f*Bm*Kw*s*10^(6)*Aw*Ai*10^(-3);// kVA output of a single phase transformer
disp(Q,'kVA output of a single phase transformer (kVA)=');
//in book answer is 450 kVA.  The answers vary due to round off error
