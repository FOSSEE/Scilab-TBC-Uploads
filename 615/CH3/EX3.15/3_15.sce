//chemical kinetics and catalysis//
//example 3.15//
t1=6.18;//time in min//
t2=18;
t3=27.05;
ri=24.09;//rotation in degrees when t=0min//
r1=21.4;//rotation in degrees when t=6.18min//
r2=17.7;//rotation in degrees when t=18min//
r3=15.0;//rotation in degrees when t=27.05min//
rf=-10.74;//rotation in degrees when t=infinity//
a=ri-rf;//a value//
a1=r1-rf;//a-x value at t=6.18min//
a2=r2-rf;//a-x value at t=18min//
a3=r3-rf;//a-x value at t=27.05min//
k1=(2.303/t1)*log10(a/a1);
printf("Rate constant value at t=6.18min %f/min",k1);
k2=(2.303/t2)*log10(a/a2);
printf("\nRate constant value at t=18min %f/min",k2);
k3=(2.303/t3)*log10(a/a3);
printf("\nRate constant value at t=27.05min %f/min",k3);
printf("\nSince rate constant values are nearly same,hence reaction is of first order");
