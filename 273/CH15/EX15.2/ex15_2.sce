clc;clear;
//Example 15.2
//calculation of energy 

//given values
M1=15.00001;//atomic mass of N15 in amu
M2=15.0030;//atomic mass of O15 in amu
M3=15.9949;//atomic mass of O16 in amu
amu=931.4;//amu in MeV
mp=1.0072766;//restmass of proton
mn=1.0086654;//restmass of neutron

//calculation
Q1=(M3-mp-M1)*amu;
disp(Q1,'energy required to remove one proton from O16 is');
Q2=(M3-mn-M2)*amu;
disp(Q2,'energy required to remove one neutron from O16 is');
