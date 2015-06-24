clc;
clear;
printf("\t\t\tChapter4_example8\n\n\n");
rou=7817;
c=461;
k=14.4;
alpha=.387e-5;
L1=.03;
L2=0.03;
L3=0.04;
x=0.04;
T_i=95;
T_inf=17;
// for infinite plate
L=L1/2;
hc=50;
reciprocal_Bi_plate=k/(hc*L);
printf("\nThe value of 1/Bi for infinite plate is %.1f",reciprocal_Bi_plate);
T=50;
n=1;
t=[3000 1500 700 400 200 300 350];
[n m]=size(t);
// parameter for infinite plate Fourier Number,Fo is named as parameter1
for i=1:m
    parameter1(i)=alpha*t(i)/L^2;
// parameters for semi-infinite solid Bi(Fo)^0.5 and x/(2*(alpha*t)^0.5) are named as parameter2 and parameter3
parameter2(i)=hc*((alpha*t(i))^0.5)/k;
parameter3(i)=x/(2*(alpha*t(i))^0.5);
dim_T_plate=[0.085 0.34 0.55 0.7 0.8 0.8 0.7]; //the corresponding values of dimensionless temperature for infinite plate from figure 4.6a
dim_T_solid=[0.225 0.14 0.075 0.046 0.02 0.035 0.042]; // the corresponding values of dimensionless temperature for semi-infinite solid from figure 4.12
dim_T_bar(i)=dim_T_plate(i)*dim_T_plate(i)*(1-dim_T_solid(i));
T(i)=dim_T_plate(i)*dim_T_plate(i)*(1-dim_T_solid(i))*(T_i-T_inf)+T_inf;
end
printf("\nThe Results for different time instances:\n");
printf("\n\tInfinite Plate\t\t\t\t\t\tSemi-Infinite Solid\t\t\t\tDimensionless Temperature\tTemperature");
printf("\ntime t, s\t1/Bi\tFo\t(T-Tinf)/(Ti-Tinf)\tBi(Fo)^0.5\tx/(2*(at)^0.5)\t(T-Tinf)/(Ti-Tinf)\t(T-Tinf)/(Ti-Tinf)\t\tT");
for i=1:m
    printf("\n%d\t\t%.1f\t%.2f\t\t%.2f\t\t%.3f\t\t%.3f\t\t%.3f\t\t\t%.3f\t\t\t\t%.1f",t(i),reciprocal_Bi_plate,parameter1(i),dim_T_plate(i),parameter2(i),parameter3(i),dim_T_solid(i),dim_T_bar(i),T(i));
end
