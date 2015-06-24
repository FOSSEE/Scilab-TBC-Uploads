clc
//Initialization of variables
p1=100 //psi
p2=10 //psia
pa=14.7 //psi
T2=468 //R
T2r=528 //R
R=1.986
M=29
//calculations
disp("From air tables,")
phi1=0.06657
phi2=0.03762
ds=phi1-phi2
phi11=0.19569
phi12=0.06657
ds2= phi12-phi11 - R/M *log(p2/p1)
//results
printf("In case 1, change in entropy = %.5f Btu/lbm R",ds)
printf("\n In case 2, change in entropy = %.5f btu/lbm R",ds2)
//the answer is a bit different due to rounding off error in textbook
