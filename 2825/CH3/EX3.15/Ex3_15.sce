//Ex3_15 Pg-190
clc

disp("(a) When the diode is forward biased figure 3.55(b),it offers zero resistance. It is like shorted switch.This shorted switch across AB also short-circuits the resistance R2.Obviously,a parallel combination of the diode and R2 is equivalent to a resistance of zero ohms.")
R1=100 //reisitor R1 in ohm 
R=R1
Vaa=10 //supply voltage in V
I=Vaa/R
printf("\n Current drawn from battery =%.1f A \n\n",I)

disp("(a) When the diode is reverse biased figure 3.55(b).It is like open switch.Obviously,it then does not make any difference whether the diode is connected or not.")
R2=100 //resistor R2 in ohm
tot_R=R1+R2
I1=Vaa/tot_R

printf("\n Current drawn from battery =%.2f A \n\n",I1)
