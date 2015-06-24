//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.14w
//calculation of the speed of the sound in air

//given data
nu=800//frequency(in Hz) of the tunning fork
l1=9.75*10^-2//distance(in m) where resonance is observed
l2=31.25*10^-2//distance(in m) where resonance is observed
l3=52.75*10^-2//distance(in m) where resonance is observed

//calculation
//from the equation of the resonate frequency ....l = (n*v)/(4*nu)
//(n*v)/(4*l1) = nu...................(1)
//((n+2)*v)/(4*l2) = nu...............(2)
//((n+4)*v)/(4*l3) = nu...............(3)
//form above equations ,we get
v=2*nu*(l2-l1)

printf('the speed of the sound in air is %d m/s',v)
