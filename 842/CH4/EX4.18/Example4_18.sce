//clear//
//Example 4.18:Frequency Response of Ideal Low pass Filter
// X(jW)= 1, from -T1 to T1
clear;
clc;
close;
Wc = 10;    //1 rad/sec
W  = -Wc:0.1:Wc; //Passband of filter
HW0 = 1; //Magnitude of Filter
HW = HW0*ones(1,length(W));
//Inverse Continuous-time Fourier Transform
t = -%pi:%pi/length(W):%pi;
Dw = 0.1;
ht =(1/(2*%pi))*HW *exp(sqrt(-1)*W'*t)*Dw;
ht = real(ht);
figure
subplot(2,1,1)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot(W,HW);
xtitle('Frequency Response of Filter H(jW)')
subplot(2,1,2)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot(t,ht);
xtitle('Impulse Response of Filter h(t)')
