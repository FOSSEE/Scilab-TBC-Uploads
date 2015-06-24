clc
disp("Example 7.38")
printf("\n")
disp("Determine modulation index & Antenna current when MOdulation index changes to 0.8")
printf("given\n")
disp("carrier current=8A,Modulated carrier current=8.93A")
Icar=8
It=8.93
//assume R=1
R=1
Pc=Icar^2*R
Pt=It^2*R
Ma=sqrt(2*((Pt/Pc)-1))
//Modulated carrier current when Ma changes to 8
Ma1=0.8
It1=Icar*sqrt(1+(Ma1^2/2))
printf("Modulation index =%f\n",Ma)
printf("Modulated carrier current when Ma changes to 8 is =%f ampere",It1)
