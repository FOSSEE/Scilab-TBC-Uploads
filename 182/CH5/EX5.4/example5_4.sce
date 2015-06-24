// to find the out put frequency in fig 5-10
// example 5-4 in page 130
clc;
//Given data
To=1e-6;//oscillator time period=1 micro-second
N=16;// modulus number of the counter = 16
n=3;// number of counters
//calculations
T=To*(N^n);//out put time period
printf("output frequency=%d hertz",1/T);//output frequency
//result
//output frequency=244 hertz 