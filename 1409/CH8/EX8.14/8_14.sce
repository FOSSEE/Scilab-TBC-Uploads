clc;
//page no 8-52
//Example 8.14
//Let Csmax/Csmin be denoted by C
fmin=500;//in kHz
fmax=1600;//in kHz
IF=465;//in kHz
C=(fmax/fmin)^2;
fomin=fmin+IF;
fomax=fmax+IF;
disp(C,'Csmax/Csmin=');
disp(+'kHz',fomin,'fomin=');
disp(+'kHz',fomax,'fomax=');
//Let Comax/Comin be denoted by C1
C1=(fomax/fomin)^2;
disp(C1,'Comax/Comin=');
Csmax=350//in pF
Csmin=Csmax/C;
disp(+'pF',Csmin,'Csmin=');
//We know that
//C=[Csmax(Csmin+Cp)/Csmin(Csmax+Cp)]
//4.58=350/34.2*((34.2+Cp)/(350+Cp))
Cp=221.3;//in pF
Comax=(Csmax*Cp)/(Csmax+Cp);
Comin=(Csmin*Cp)/(Csmin+Cp);
disp(+'pF',Comax,'Comax=');
disp(+'pF',Comin,'Comin=');
//Rounding Comax
Comax1=135.5;
//The oscillator coil frequency can be calculated as
Lo=[1/[(2*%pi*(fomin*10^3))^2*(Comax1*10^-12)]]*10^6;//Answer was given wrong in the text book
disp(+'microHenry',Lo,'Oscillator coil frequency is');
//At 1000 kHz
f=1000;//in kHz
fomid=f+IF;
Comid=Comax/(fomax/fomid)^2;
Comid1=68.2;
disp(+'pF',Comid,'Comid=');
Csmid=1/[(1/Comid1)-(1/Cp)];
disp(+'pF',Csmid,'Csmid=');
fsmid=fmax/sqrt(Csmax/Csmid);
disp(+'kHz',fsmid,'fs"'mid=");
Terr=fsmid-f;
disp(+'kHz',Terr,'Tracking error is');
