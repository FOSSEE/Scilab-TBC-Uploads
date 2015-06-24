clc;
//Example 31.2
//page no 492
printf("Example 31.2 page no 492\n\n");
//the vapor pressure p' for a new synthetic chemical at a given temperature
t1=1100//assume intial actual temperature,k
T1=t1*1e-3//temperature,k
printf("\n T1=%f k",T1);
f1=T1^3 -2*T1^2 + 2*T1 -1//function of T,f(T)
f_d1=3*T1^2 -4*T1 + 2//derivative of f(T)
//using newton rapson formula to estimate T2
T2=T1 -(f1/f_d1)//temperature T2
printf("\n T2=%f k",T2);
f2=T2^3 -2*T2^2 + 2*T2 -1
f_d2=3*T2^2 -4*T2 + 2
T3=T2 -(f2/f_d2)//temperature T3
printf("\n T3=%f k",T3);
//finally the best estimate is T3,t=1.000095
