
clc;
RC=12*10**3;
RL=4.7*10**3;
R1=33*10**3;
R2=4.7*10**3;
IC=1*10**-3;
hiemin=1*10**3;
hiemax=5*10**3;
hfemin=70;
hfemax=350;
hie=sqrt(hiemin*hiemax);
disp('kOhm',hie*10**-3,"hie=");
hfe=sqrt(hfemin*hfemax);
disp('Ohm',hfe*1,"hfe=");//answer printed in the book is wrong
Ri=hie;
a=(R1*R2)/(R1+R2);
Ris=(Ri*a)/(Ri+a);
disp('kOhm',Ris*10**-3,"Ris=");
Ai=hfe;
rc=(RC*RL)/(RC+RL);
Avs=(Ai*rc)/Ri;
disp(Avs,"Avs=");
