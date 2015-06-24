//Chapter 10, Problem 19
clc;
E1=1.0186;              //emf of standard cell
I1=400e-3;              //balance length when using standard cell
I2=650e-3;              //balance length when using dry cell
E2=E1*(I2/I1);          //calculating emf of dry cell
printf("e.m.f of dry cell = %f V",E2);
