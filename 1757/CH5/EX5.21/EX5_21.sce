//Example5.21  // to design compensating network
clc;
clear;
close;
fH = 10 ; //k ohm // break frequency initiated by a zero
fL = 1 ;  //k ohm // break frequency initiated by a pole
C = 0.02; // uF  // we choose
// loop gain of compensated network

// ACom =(1+j(f/fH))/(1+j(f/fL))
// fH = (1/2*pie*R1*C)
// fL = (1/2*pie*(R1+R2)*C)
R1 = (1/(2*3.14*C*fH));
disp('The compensating first resistor R1 value is = '+string(R1)+' K ohm ');
R2 = ((1)/(2*3.14*C*fL))-(R1);
disp('The compensating second resistor R2 value is = '+string(R2)+' K ohm ');
