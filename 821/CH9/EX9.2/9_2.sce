c=3*10^10;//velocity of light in cm//
h=6.625*10^-27;//plank's constant//
L=6.02*10^23;//Avagadro number//
l=3020*10^-8;//wavelength of light radiation in cm//
E=(L*h*c)/l;//value of one einstein in ergs//
printf('Value of one einstein=E=%f=3.96*10^12ergs',E);
LA=15000;//light absorbed in ergs per second//
NE=LA/E;//number of einsteins absorbed per second//
printf('\nNumber of Einsteins absorbed per second=NE=3.788*10^-9');
QY=0.54;//Quantum yield for CO formation//
N=QY*NE;//number of moles of CO formed per sec//
printf('\nNumber of moles of Co formed per sec=N=2.046*10^-9');
R=2.046*10^-9;//Rate of formation of CO in moles per sec//
printf('\nRate of formation of CO=R=2.046*10^-9 moles per sec');
