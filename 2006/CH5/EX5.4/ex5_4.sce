clc;
V1=0.3; // Initial volume of water upto stop 1 in m^3
p1=1; // Initial pressure of water in bar
x1=0.2; // Dryness fraction at initial state (1)
p2=3; // Pressur required to lift the piston in bar
V4=0.45; // Volume of water upto stop 2 in m^3
vf1=0.001043; // Specific volume at state (1) from steam table in m^3/kg
vg1=1.694; // Specific volume at state (1) from steam table in m^3/kg
v1=vf1+x1*(vg1-vf1); // Total Specific volume at state (1) from steam table in m^3/kg
m=V1/v1; // Mass of water
v3=V4/m; // Specific volume at stop 2
v2=v1; p3=p2; v4=v3; V3=V4; V2=V1; // From process diagram
//  (a)
p4=0.361; // Final Pressure at v4 from steam table in Mpa
disp ("MPa",p4,"Fianl pressure = ","(a)");
//  (b)
W14=p2*10^2*(V3-V2); // Work done in process 
uf1=417.36; // Specific internal energ at initial state in kJ/kg
ufg1=2088.7; // Specific internal energ at initial state in kJ/kg
u1=uf1+x1*ufg1;  // Total Specific internal energr at initial state in kJ.kg
u4=2550.2; // Specific internal energ at final state in kJ/kg
Q14=m*(u4-u1)+W14; // From first law of thermodynamics
disp ("kJ",W14,"Work done during the process = ","(b)");
disp ("kJ",Q14,"Heat transfer during the process = ");
