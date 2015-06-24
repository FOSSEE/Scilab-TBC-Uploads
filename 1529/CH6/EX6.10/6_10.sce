//Chapter 6, Problem 10
clc;
C1=6*10^-6;                     //Capacitance of capacitor1
C2=4*10^-6;                     //Capacitance of capacitor2
C3=C1+C2;                       //Calculating equivalent capacitance in parallel
C4=(C1*C2)/(C1+C2);             //Calculating equivalent capacitance in series
disp("(a)");
printf("In parallel, equivalent capacitance = %f uF",C3*10^6);
disp("(b)")
;printf("In series, equivalent capacitance = %f uF",C4*10^6);
