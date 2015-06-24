//chemical kinetics and catalysis//
//example 3.5//
t1=0;
t2=4.89;
t3=10.07;
t4=23.66;
v1=47.65;//ml of alkali used  at t=0min or a value//
v2=38.92;//ml of alkali used or a-x value at t=4.89min//
v3=32.62;//ml of alkali used or a-x value at t=10.07min//
v4=22.58;//ml of alkali used or a-x value at t=23.66min//
x2=v1-v2;//x value at t=4.89min//
x3=v1-v3;//x value at t=10.07min//
x4=v1-v4;//x value at t=23.66min//
k22=(1/t2)*(x2/(v1*v2));//rate constant for second order equation//
printf("Rate constant k2 value at t=4.89min is %f/min",k22);
k23=(1/t3)*(x3/(v1*v3));//rate constant for second order equation//
printf("\nRate constant k2 value at t=10.07min is %f/min",k23);
k24=(1/t4)*(x4/(v1*v4));//rate constant for second order equation//
printf("\nRate constant k2 value at t=23.66min is %f/min",k24);
printf("\nAlmost constant values of k2 indicate that reaction is second order");