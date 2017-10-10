//problem 4 pagenumber 2.87
//given
format(6);
r1=10e3;//ohm
rf1=20e3;//ohm
r2=5e3;//ohm
//determine gain of amplifier
a1=1+rf1/r1;
a2=-rf1/r1;
disp( 'Switch off gain  = '+string(a1+a2));//no unit
disp( 'Switch on gain  = '+string(a2));//no unit
