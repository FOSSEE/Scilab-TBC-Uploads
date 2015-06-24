clc;clear;
//Example 1.3
//Calculation of electric intensity between plates and force on proton

//given values
d=0.02//distance between plates in m
V=400;//potential differnce of plates in V
q=1.6*10^-19;//charge on a proton in C

//calculation
E=V/d;//
disp(E,'The electric field intensity(in V/m) between plates is');
F=q*E;//
disp(F,'The force(in N) on proton is') 