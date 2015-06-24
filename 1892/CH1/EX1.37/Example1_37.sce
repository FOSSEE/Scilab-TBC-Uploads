// Example 1.37

clear; clc; close;

format('v',7);
// Given data
Nnl=1485;//in rpm
Nfl=1350;//in rpm
f=50;//in Hz

//Calculations
Ns=1500;//nearest syn speed to Nfl in rpm(Assumed)
//Formula : Ns=120*f/P
P=120*f/Ns;//no. of poles
disp("Part (i)");
disp(P,"No. of poles : ");
Snl=(Ns-Nnl)/Ns;//slip
disp("Part (ii)");
disp(Snl*100,"No load Slip in % : ");
Sfl=(Ns-Nfl)/Ns;//slip
disp(Sfl*100,"No load Slip in % : ");
fr_nl=f*Snl;//in Hz
fr_fl=f*Sfl;//in Hz
disp("Part (iii)");
disp(fr_nl,"No load frequency in Hz : ");
disp(fr_fl,"Full load frequency in Hz : ");
//Part (iv)
disp("On No Load : ");
N1=120*fr_nl/P;//speed of rotor field with respect to rotor conductor in rpm
disp(N1,"Speed of rotor field with respect to rotor conductor in rpm : ");
Rf_wrtS=1500;//in rpm
Rf_wrtSF=0;//in rpm
disp(Rf_wrtS,"Rotor field with respect to stator(rpm) : ");
disp(Rf_wrtSF,"Rotor field with respect to stator field(rpm) : ");
disp("On Full Load : ");
N2=120*fr_fl/P;//speed of rotor field with respect to rotor conductor in rpm
disp(N2,"Speed of rotor field with respect to rotor conductor in rpm : ");
Rf_wrtS=1500;//in rpm
Rf_wrtSF=0;//in rpm
disp(Rf_wrtS,"Rotor field with respect to stator(rpm) : ");
disp(Rf_wrtSF,"Rotor field with respect to stator field(rpm) : ");
//Answer of no load slip is wrong in the book.
