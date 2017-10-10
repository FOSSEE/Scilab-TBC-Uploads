//Example 7_6 page no:265
clc;
Vmag=(50*7.21)/7.28;//Voltage across(4+j6)ohm
Vang=0+56.3-15.95;
Zrel=4.83;
Zimg=1-1.095;
Zmag=sqrt((Zrel*Zrel)+(Zimg*Zimg));
Zang=atand(Zimg/Zrel);
disp(Vmag,"magnitude of thevenin voltage is(in V)");
disp(Vang,"angle of thevenin voltage is(in degree)");
disp(Zmag,"magnitude of thevenin impedence is(in ohm)");
disp(Zang,"angle of thevenin impedence is(in degree)");
