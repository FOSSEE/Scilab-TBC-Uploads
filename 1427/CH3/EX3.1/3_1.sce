//ques-3.1
//Calculating weight average and number average molecular mass of polymer
clc
n1=10; m1=5000; //Type-1
n2=20; m2=7500; //Type-2
n3=20; m3=10000; //Type-3
n4=25; m4=15000; //Type-4
n5=20; m5=20000; //Type-5
n6=5; m6=25000; //Type-6
N_avg=(n1*m1+n2*m2+n3*m3+n4*m4+n5*m5+n6*m6)/(n1+n2+n3+n4+n5+n6);//Number-average
W_avg=(n1*m1^2+n2*m2^2+n3*m3^2+n4*m4^2+n5*m5^2+n6*m6^2)/(n1*m1+n2*m2+n3*m3+n4*m4+n5*m5+n6*m6);//Weight average
printf("The number-average and weight-average molecular mass of polymer are %d and %d repectively.",N_avg,W_avg);

