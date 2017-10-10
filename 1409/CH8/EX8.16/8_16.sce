clc;
//page no 8-55
//Example 8.16
fsmin=450;//in kHz
fsmax=1600;//in kHz
IF=455;//in kHz
f=1000;//in kHz
fomin=fsmin+IF;
fomax=fsmax+IF;
disp(+'kHz',fomin,'fomin=');
disp(+'kHz',fomax,'fomax=');
//Let Comax/Comin be denoted by C
C=(fomax/fomin)^2;
disp(C,'Comax/Comin=');
//Let Csmax/Csmin=C1
C1=(fsmax/fsmin)^2;
Csmax=300;//in pico Farads
Csmin=(Csmax/C1);
disp(+'pF',Csmin,'Csmin=');
//Trimmer capacitor is connected in parallel with tuning capacitor
//Comax/Comin=(Csmax+CT)/(Csmin+CT)
//5.156=(300+CT)/(23.730+CT);
CT=42.745;//in pF
disp(+'pF',CT,'CT=');
Comax=Csmax+CT;
Comin=Csmin+CT;
disp(+'pF',Comax,'Comax=');
disp(+'pF',Comin,'Comin=');
//The oscillator coil value can be calculated as
Lo=[1/[(2*%pi*(fomin*10^3))^2*(Comax*10^(-12))]]*10^6;
disp(+'microHenry',Lo,'Oscillator coil value is');
fomid=f+IF;
Comid=Comax/(fomax/fomid)^2;
disp(+'pF',Comid,'Comid=');
Comid1=171.82;
Lo1=90.234;
fomid1=[1/(2*%pi*sqrt(Lo1*10^-6*Comid1*10^-12))]*10^-3;
disp(+'kHz',fomid1,'Actual value of fomid=');
Terr=fomid1-fomid;
disp(+'kHz',Terr,'Tracking error is');
