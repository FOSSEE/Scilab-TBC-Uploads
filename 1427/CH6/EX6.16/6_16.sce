//ques-6.16
//Finding enthalpy change for a reaction
clc
G=-3.138;//free energy change (in kcal)
T=300;//temperature (in K)
z=-14.39;//free energy change w.r.t time (in cal/deg)
H=G-T*(z/1000);
printf("The enthalpy change required is %.3f kcal.",H);
