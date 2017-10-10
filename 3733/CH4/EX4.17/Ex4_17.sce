//Example 4_17
clc;funcprot(0);
//Given data
P_1=93;// kW
H_1=64;// m
H_2=88;// m

//Calculation
//(i)For the same size,the speed is proportional to the square root of head and so
// N=N_2/N_1
N=sqrt(H_2/H_1);
// By solving N, it gives the relation N_2=1.173 N_2
N_i=((N*100)-100);//The speed increases in % 
//(ii)For the same wheel,power varies as H^3/2 and so
P_2=P_1*(H_2/H_1)^(3/2);// kW
printf('\n The speed increases by %0.1f percentage.\n The power developed,P=%0.0f kW',N_i,P_2);
