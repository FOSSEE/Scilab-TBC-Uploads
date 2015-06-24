//chapter 15
//example 15.7
//page 656
printf("\n")
printf("given")
rs=600;R1=1*10^3;R2=10*10^3;f=800*10^3;
disp(" stray capacitance")
Cs=1/(2*3.14*f*10*(((rs+R1)*R2)/(rs+R1+R2)))
disp("compensation capacitor")
C2=((Cs*(rs+R1))/R2)*10^12;
printf("compensation capacitor is %3.2fpF\n",C2)