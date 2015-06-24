clc;
p1=0.3; // initial pressure of ateam in MPa
T1=350; // Initial temperature of steam in degree celcius
// following are the values taken from steam table for initial state 
v1=0.9535; // specific volume in m^3/kg
u1=2886.2; // specific internal energy in kJ/kg
s1=7.868; // specific entropy in kJ/kg K
v2=2*v1; // final specific volume of steam
u2=u1;
// following are the values taken from steam table final state
T2=349; // Final temperature of steam in degree celcius
p2=0.167; // Final pressure of ateam in MPa
s2=8.164; // specific entropy in kJ/kg K
delta_s=s2-s1; // Entropy generation
LW=(T1+T2)/2 * delta_s; // Lost work
disp ("kJ",LW,"Lost work = ","kJ/kg K",delta_s,"Entropy Generation =");
