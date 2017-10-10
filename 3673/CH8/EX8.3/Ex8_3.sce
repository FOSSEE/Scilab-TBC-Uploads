//Example 8_3 page no:299
clc;
R=10;//resistance is ohm
L=0.1;//inductive reactance in henry
C=10*10^-6;//capacitive reactance in farad
f=1/(2*%pi*sqrt(L*C));//frequency in Hz
fa10=f+10;
fb10=f-10;
Z=R;//impedence at resonance
disp(Z,"impedence at resonance is (in ohm)");
Xc1=1/(2*%pi*fa10*C);//capacitive reactance at 149.2
Xc2=1/(2*%pi*fb10*C);//capacitive reactance at 169.2
Xl1=2*%pi*fa10*L;//inductive reactance at 149.2
Xl2=2*%pi*fb10*L;//inductive reactance at 169.2
Z1=sqrt(R^2+(Xl1-Xc1)^2);
disp(Z1,"impedence at 10Hz above resonance(i.e 149.2 Hz) is (in ohm)");
Z2=sqrt(R^2+(Xl2-Xc2)^2);
disp(Z2,"impedence at 10Hz below resonance(i.e 169.2 Hz) is (in ohm)");
//in text book square value of resistance is rounded so answer of impedence is approximate in text book
