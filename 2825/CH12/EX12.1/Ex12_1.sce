//Ex12_1 Pg-587
clc

C1=0.001e-6 //capacitor c1 in farad
C2=0.01e-6 //capacitor c2 in farad
L=5e-6 //inductance in Henry

disp("To maintain vibrations in a colpitts oscilator,")
disp("              hfe >= C2/C1")
hfe=C2/C1 //transistor current gain
printf("                    = %.f \n",hfe)

printf("So the value of hfe of transistor used must be greater \n than 10. \n")
disp("Frequency of oscillations produced")
x=inv(C1)+inv(C2)
y=inv(L)
f=sqrt(x*y)
printf("            = %.1f*1e7 Hz",f*1e-7)
// answer in the book is wrong
