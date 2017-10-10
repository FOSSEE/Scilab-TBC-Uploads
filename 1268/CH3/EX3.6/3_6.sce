clc;
disp("Example 3.6")
pgrad= 12500; // pressure gardient in dynes/cm^3
d=0.445; // diameter in metres
mew=8; // viscosity in poise
Q= %pi*pgrad*d*d*d*d/(128*mew);
disp(" Volumetric flow rate is ");
disp(Q);
disp(" cc/s");
