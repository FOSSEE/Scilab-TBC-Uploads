clc;
//page no 8-58
//Example 8.19
fmin=500;//in kHz
fmax=1600;//in kHz
IF=465;//in kHz
//Let Csmax/Csmin=C
C=(fmax/fmin)^2;
disp(C,'Csmax/Csmin=');
fomin=fmin+IF;
fomax=fmax+IF;
disp(+'kHz',fomin,'fomin=');
disp(+'kHz',fomax,'fomax=');
//Let Comax/Comin be denoted by C1
C1=(fomax/fomin)^2;
disp(C1,'Comax/Comin=');
Csmax=350;//in pF
Csmin=Csmax/C;
disp(+'pF',Csmin,'Csmin=');
//C=[Csmax(Csmin+Cp)/Csmin(Csmax+Cp)]
//4.58=(350/34.2)*[(34.2+Cp)/(350+Cp)]
Cp=221.3;
disp(+'pF',Cp,'Cp=');
Comax=(Csmax*Cp)/(Csmax+Cp);
Comin=(Csmin*Cp)/(Csmin+Cp);
disp(+'pF',Comax,'Comax=');
disp(+'pF',Comin,'Comin=');
//Rounding Comax to 135.5
Comax1=135.5;
Lo=[1/[(2*%pi*fomin*10^3)^2*(Comax1*10^(-12))]]*10^6;//Answer was given wrong in the text
disp(+'microHenry',Lo,'Lo=');
