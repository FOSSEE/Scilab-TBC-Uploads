clc;
//page no 8-16
//Example 8.5
fsmin=400;//in kHz
fsmax=1650;//in kHz
IF=455;//in kHz
Csmax=300;//in pico Farads
f=1000;//in kHz
//Step:1 Calculate fomin,fomax, and oscillator capacitance ratio
fomin=fsmin+IF;
fomax=fsmax+IF;
//Let Comax/Comin be denoted by C
C=(fomax/fomin)^2;
disp(+'kHz',fomin,'fomin=');
disp(+'kHz',fomax,'fomax=');
disp(C,'Comax/Comin=');
//Step:2 We know that, calculate Csmin
//Let Csmax/Csmin=C1
C1=(fsmax/fsmin)^2;
Csmin=(Csmax/C1);
disp(+'pF',Csmin,'Csmin=');
//Step:3 We know that, calculate padder capacitance
//C=[Csmax(Csmin+Cp)/Csmin(Csmax+Cp)]
//6.06=(5295+300*Cp)/(5295+17.65*Cp)
//193.041*Cp=26792.7
Cp=26792.7/193.041;
disp(+'pF',Cp,'Cp=');
//Lets round off Csmin to 17.65
Csmin1=17.65;
//Step:4 Now calculate Comax and Comin
Comax=(Csmax*Cp)/(Csmax+Cp);
Comin=(Csmin1*Cp)/(Csmin1+Cp);
disp(+'pF',Comax,'Comax=');
disp(+'pF',Comin,'Comin=');
//Step:5 Calculate Oscillator inductance
Lo=[1/[(2*%pi*(fomin*10^3))^2*(Comax*10^(-12))]]*10^3;
disp(+'mH',Lo,'Oscillator coil value=');
//Step:6 Calculate tracking error
//At 1 MHz
fomid=f+IF;
Comid=Comax/(fomax/fomid)^2;
disp(+'pF',Comid,'Comid=');
//Rounding off Lo and Comid values
Lo1=365*10^-6;
Comid1=45.4*10^-12;
//Actual value of fomid1 is
fomid1=[1/(2*%pi*sqrt(Lo1*Comid1))]*10^-3;
disp(+'kHz',fomid1,'Actual value of fomid=');
Terr=fomid1-fomid;
disp(+'kHz',Terr,'Tracking error is');
