clc;
R=20;L=10*(10^-3);ins=0.1*(10^6);C=.1*(10^-6);w=5000; //ins=insulation resistance
G=1/ins;
Z=R+(%i*w*L);
Y=G+%i*w*C;
Zo=sqrt(Z/Y);
C=real(Zo);
D=imag(Zo);
printf('Input impedance Zo = %f /_%f ohms\n',(abs(Zo)),round(((atan(imag(Zo),real(Zo))*180/%pi))*10)/10);
//the difference in result of Zo is due to erroneous value in textbook.
disp("The difference in result of Zo is due to erroneous value in textbook")
