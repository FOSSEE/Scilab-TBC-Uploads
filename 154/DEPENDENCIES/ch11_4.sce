clc
disp("Problem 11.4")
printf("\n")

printf("Given")
disp("Veff=110V Z=10+i8 ohm")
Veff=110;
Z=10+%i*8
Zmag=sqrt(10^2+8^2)
Zph=(atan(8/10)*180)/%pi
P=(Veff^2*R)/(Zmag^2)
pf=cos((Zph*%pi)/180)

disp(pf,"Power factor is")