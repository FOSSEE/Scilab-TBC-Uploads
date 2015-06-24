clc
disp("Example 3.4")
printf("\n")
printf("Given")
disp("values of two capacitors are 2uF and 10uF")
C1=2*10^-6;C2=10*10^-6;
//For two capacitors in series
disp("Ceq=(C1*C2)/(C1+C2)")
//On solving for Ceq
Ceq=((C1*C2)/(C1+C2))*10^6
printf("Value of equivalent capacitance is %3.2fuF\n",Ceq)

disp("If C2=10pF")
C2=10*10^-12;

Ceq=((C1*C2)/(C1+C2))*10^12
printf("Value of equivalent capacitance is %3.2fpF\n",Ceq)