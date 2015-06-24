clc;clear;
//Example 13.6

//given data
m0=11.01280;//mass 5B11 in a.m.u
m1=4.00387;//mass of alpha particle in a.m.u
m2=14.00752;//mass of 7N14 in a.m.u
//m3=mass of neutron 
E1=5.250;//energy of alpha particle in MeV
E2=2.139;//energy of 7N14 in MeV
E3=3.260;//energy of 0n1 in MeV

//calculations
m3=(m0*931)+((m1*931)+E1)-((m2*931)+E2)-E3;
disp((m3/931),'mass of neutron in a.m.u')