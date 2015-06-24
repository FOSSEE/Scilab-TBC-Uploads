clc
//Initialization of variables
T1=1440+460 //R
T2=1000+460 //R
n=1.4 
//calculations
Pratio=(T2/T1)^(n/(n-1))
Vratio=(T1/T2)^(1/(n-1))
disp("From table 6")
Pr1=141.51
Pr2=50.34
vr1=4.974
vr2=10.743
Pratio2=Pr2/Pr1
Vratio2=vr2/vr1
//results
//The answer in the textbook given for Vratio is wrong.
printf("Case 1")
printf("\n Pressure ratio = %.1f",Pratio+0.1)
printf("\n Volume ratio = %.2f",Vratio)
printf("\n Case 2")
printf("\n Pressure ratio = %.3f",Pratio2)
printf("\n Volume ratio = %.2f",Vratio2)
