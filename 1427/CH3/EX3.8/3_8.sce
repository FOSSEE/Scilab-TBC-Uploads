//ques-3.8
//Calculating weight average and number average molecular mass of polymer
clc
//n=number of repeat units
M=42;//Molar mass
//N=number of molecules in 100
n1=400; N1=25;//Type-1
n2=800; N2=35;//Type-2
n3=600; N3=40;//Type-3
m1=n1*M;//Mass of Type-1
m2=n2*M;//Mass of Type-2
m3=n3*M;//Mass of Type-3
N_avg=(n1*m1+n2*m2+n3*m3)/(n1+n2+n3);//Number-average
W_avg=(n1*m1^2+n2*m2^2+n3*m3^2)/(n1*m1+n2*m2+n3*m3);//Weight-average
printf("Number-average and weight-average molecular masses of polymer are %d and %d respectively.",N_avg,W_avg);
