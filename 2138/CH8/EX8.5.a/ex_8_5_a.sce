//Example 8.5.a // back emf
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
 disp(Eb,"back emf in volts")
