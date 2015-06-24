
clc;
clear;
//Example 2.18,Page no 2.38
//Given
//Assume:
L=1    //[m]
r1=0.10    //[m]    Outside radius od pipe
ia=0.025    //inner insulaiton [m]

r2=r1+ia    //Outer radius of inner insulation
r3=r2+ia    //Outer radius of outer insulation
//CASE 1:'a' near the pipe surface
//let k1=1
k1=1;    //Thermal conductivity of A[W/m.K]
//and k2=3k1=3
k2=3;    //Thermal conductivity of B[W/m.K]
//Let dT=1
dT=1
Q1=dT/(log(r2/r1)/(2*%pi*k1*L)+log(r3/r2)/(2*%pi*k2*L))
Q1=22.12    //Approximate
//CASE 2:'b' near the pipe surface 
Q2=dT/(log(r2/r1)/(2*%pi*k2*L)+log(r3/r2)/(2*%pi*k1*L))
Q2=24.39       //Approximation
printf("ANSWER-(i)\nQ1=%f W \nQ2= %f W \nQ1 is less than Q2.i.e arrangement A near the pipe surface and B as outer layer gives less heat loss\n",Q1,Q2);
percent=(Q2-Q1)*100/Q1;    //percent reduction in heat loss
printf("\nANSWER-(ii) \nPercent reduction in heat loss (with near the pipe surface)=%f percent",percent);


