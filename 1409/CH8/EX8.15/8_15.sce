clc;
//page no 8-54
//Example 8.15
fsmax=1650;
fsmin=525;//in kHz
SFR=fsmax/fsmin;
disp(SFR,'Signal frequency ratio is');
//Rounding off SRF to 3.14
SFR1=3.14;
C=(SFR1)^2;
disp(C,'Capacitance ratio is');
Comin=50;
Comax=450;//in pF
//For trimmer capacitor
//Comax/Comin=(Csmax+CT)/(Csmin+CT)
//450/50=(Csmax+CT)/(Csmin+CT)
//By solving this
//Csmax-9*Csmin=200
//Csmax-9.86*Csmin=0
//Solving we get
Csmin=232.55;
Csmax=2293;
disp(+'pF',Csmin,'Csmin=');
disp(+'pF',Csmax,'Csmax=');
//For padder capacitor
//Comax/Comin=(Csmax/Csmin)*(Csmin+Cp)/(Csmax+Cp)
//9=9.86*(232.55+Cp)/(2293+Cp)
//Solving this
Cp=21330;
disp(+'pF',Cp,'Padder Capacitor vlue is');
