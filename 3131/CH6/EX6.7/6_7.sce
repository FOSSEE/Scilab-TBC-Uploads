clear all; clc;
disp("Ex 6_7")
//FIgue 6-18c shows the final free body diagram

// Summing moments at B
a1=30
a=a1*%pi/180
F_ED=(((1000*4)+(3000*2)-(4000*4))*-1)/(sin(a)*4)
printf('\n\n F_ED = %0.0f N (C)\n',F_ED)

//Summing forces in X-direction
F_EF=(3000*cos(a))/cos(a)
printf('\n F_EF = %0.0f N (C)\n',F_EF)

//Summing forces in Y direction
F_EB=(2*3000*sin(a))-1000
printf('\n F_EB = %0.0f N (T)',F_EB)
