//Chapter1
//Page.No-4, 
//Example_1_1_a, Figure.No-1.2
//Collector current and dc voltage
//Given:
clear;clc;
Vcc=6;Vbe5=0.7;Vee=6;Vbe3=6.7;Vbe6=0.7;Vbe7=0.7; // Voltage in volts
Rc1=6.7*10^3; // Resistance in ohms
Ic1=rand();
Vc1=Vcc-Rc1*Ic1;
Ve4=Vc1-Vbe5;
I4=(Ve4+Vee)/(9.1*10^3+5.5*10^3);
Vb3=5.5*10^3*I4-Vee;
Ve3=Vb3-Vbe3;
Ie3=(Ve3+Vbe3)/3.3*10^3;
Ic1=1.08*10^-3/2.765; // Since Ie3=2*Ic1,substituting in above equation and simplifying
printf("\n Collector current Ic1 is = %.5f A \n",Ic1) // Result
Vc1=Vcc-Rc1*Ic1;
printf("\n Voltage Vc1 is = %.2f V \n",Vc1) // Result
Ve4=Vc1-Vbe5;
printf("\n Voltage Ve4 is = %.2f V \n",Ve4) // Result
Ie4=(Ve4+Vee)/(29.2*10^3);
printf("\n Current Ie4 is = %.6f A \n",Ie4) // Result
Ic5=Ie4;
printf("\n Current Ic5 is = %.6f A \n",Ic5) // Result
Vc5=Vcc-3.8*10^3*Ic5;
printf("\n Voltage Vc5 is = %.2f V \n",Vc5) // Result
Ve6=Vc5-Vbe6;
printf("\n Voltage Ve6 is = %.2f V \n",Ve6) // Result
Ie6=(Ve6+Vee)/(15*10^3);
printf("\n Current Ie6 is = %.6f A \n",Ie6) // Result
Ve7=Ve6+Vbe7;
printf("\n Voltage Ve7 is = %.2f V \n",Ve7) // Result
I1=(Vcc-Ve7)/400;
printf("\n Current I1 is = %.6f A \n",I1) // Result
Ie8=I1;
printf("\n Current Ie8 is = %.6f A \n",Ie8) // Result
Ve8=-Vee+2*10^3*Ie8;
printf("\n Voltage Ve8 at the output terminal is = %.2f V \n",Ve8) // Result