clc;
Zo=632.8;Zr=80;
F=20*log10((2*Zr*Zo)/(Zo+Zr));
printf("Reflection loss = %f db",round(F*100)/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
