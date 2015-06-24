//ques4
//Pressure and Volume of a Saturated Mixture
clc
//(a) Pressure in the tank
P=70.183;//Psat @ 90 C table A-4 in kPa
printf("(a) Pressure in the tank = %.3f kPa ",P);
//(b)volume of tank
disp('(b)V = Vf+Vg = mf*vf+mg*vg');
mf=8;//mass of liquid water in kg
mg=2//mass of vapor water in kg
vf=0.001036;//saturated specific volume of liquid water from table A-4 in m^3/Kg
vg=2.3593;//saturated specific volume of vapor water from Table A-5 in m^3/Kg
V=mf*vf+mg*vg;//Total Volume in m^3
printf('Volume of tank  = %.2f m^3',V);


