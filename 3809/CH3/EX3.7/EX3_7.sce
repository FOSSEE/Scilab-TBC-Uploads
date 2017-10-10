//Chapter 3, Example 3.7
clc
//Initialisation
v1=50                          //voltage
v2=15                          //voltage
v3=100                          //voltage
r1=10                         //resistance in ohm
r2=20                        //resistance in ohm
r3=30                        //resistance in ohm
r4=25                        //resistance in ohm

//Calculation
//by making a two linear equations, and solving them by matrix method
a=[(-13/60) (1/20);(1/60) (-9/100)]
b=[-5;(-100/30)]
x=a\b
I1=x(2)/25              //current in ampere

//Results
printf("Current, I1 = %.1f A",I1)
