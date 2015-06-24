//Example 8.5.b // copper losses
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
 disp(Cl,"copper losses in watts")
