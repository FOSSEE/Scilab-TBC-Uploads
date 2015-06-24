clc;
f=10^3;  //frequency in Hz
l=0.1;  //inductance in Henry
x=2*(%pi)*f*l;   //calculating reactance
disp(x,"Reactance in Ohm = ");  //displaying result
disp("Frequency needs to be raised by the ratio 2000/628 for the frequency to equal the resistance.");
r=2000/x;
disp(r,"The frequency in Hz = ");  //displaying result
disp("At this frequency the phase angle is 45 degree.");  //displaying result