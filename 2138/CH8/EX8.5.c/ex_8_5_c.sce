//Example 8.5.c //horse power
clc;
clear;
close;
V=230;// in volts
 I=60;// in amperes
 rpm=955;//turns
 ra=0.2;//resistance of armature in ihms
 rsh=0.15;//shunt field in ohms
 sl=604;//stray losses in watts
 Rm=ra+rsh;// in ohms
 Eb=(V-I*Rm);// back emf in volts
 Dp=Eb*I;//driving power in watts
 mi=V*I;//input power in watts
 Cl=mi-Dp;// copper losses in watts
 mo=Dp-sl;//output of motor
 bhp=mo/746;// horse power in bhp
disp(bhp,"horse power  is")
