clc
//Initialization of variables
T1=900 //R
p1=100 //psia
p2=10 //psia
w=50 //Btu/lbm
//calculations
h1=120.86 //Btu/lbm
pr1=17.374
pr2=pr1*p2/p1
disp("From equilibrium charts,")
T2=468 //R
h2=16.3 //Btu/lbm
ke=h1-h2-w
//results
printf("Change in kinetic energy = %.2f Btu/lbm",ke)
