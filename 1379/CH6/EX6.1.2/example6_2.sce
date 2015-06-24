
//example 6.2
clc; funcprot(0);
//exapple 6.2 
// Initialization of Variable
Q1=24.8/1000;//flow in pump 1
d1=11.8/100;//diameter of impeller 1
H1=14.7//head of pump 1
N1=1450//frequency of motor 1
Q2=48/1000//flow in pump 2
//calculation
H2=1.15*H1;//head of pump 2
specific_speed=N1*Q1^0.5/H1^0.75;
N2=specific_speed*H2^0.75/Q2^0.5;//frequency of motor 2
disp(N2 ,"frequency of motor 2 in rpm");
d2=sqrt(N2^2*H1/H2/N1^2/d1^2);
disp(1/d2 , "diametr of impeller 2 (in m)");

