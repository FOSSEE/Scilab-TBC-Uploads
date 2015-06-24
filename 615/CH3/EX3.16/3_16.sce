//chemical kinetics and catalysis//
//example 3.16//
t1=10//time in min//
t2=20;
t3=30;
t4=40;
ri=32.4;//rotation in degrees when t=0min//
r1=28.8;//rotation in degrees when t=10min//
r2=25.5;//rotation in degrees when t=20min//
r3=22.4;//rotation in degrees when t=30min//
r4=19.6;//rotation in degrees when t=40min//
rf=-11.1;//rotation in degrees when t=0min//
a=ri-rf;//a value//
a1=r1-rf;//a-x value at t=10min//
a2=r2-rf;//a-x value at t=20min//
a3=r3-rf;//a-x value at t=30min//
a4=r4-rf;//a-x value at t=40min//
k1=(1/t1)*log(a/a1);
printf("Rate constant value at t=10min %f/min",k1);
k2=(1/t2)*log(a/a2);
printf("\nRate constant value at t=20min %f/min",k2);
k3=(1/t3)*log(a/a3);
printf("\nRate constant value at t=30min %f/min",k3);
k4=(1/t4)*log(a/a4);
printf("\nRate constant value at t=40min %f/min",k4);
printf("\nSince rate constant values are nearly same,hence inversion of sucrose is of first order");