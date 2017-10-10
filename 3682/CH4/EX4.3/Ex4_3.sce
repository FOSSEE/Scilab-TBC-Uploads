// Exa 4.3

clc;
clear;

// Given data

// An op-amp differentiator
fa = 100; // Hz
Vpp = 1; // Volts

// Solution

printf('Select, Fa = fmax = 100 Hz.\n');
printf(' Let, C1 = 0.1 µF.\n');
C1 = 0.1*10^-6; // Farads
// since Fa = 1/(2*%pi*Rf*C1);
// Therefore,
Rf = 1/(2*%pi*fa*C1);
printf(' Therefore, the calculated value of Rf = %.1f kΩ. \n',Rf/1000);

printf(' Select, fb = 10*Fa = 1000 Hz.\n');
fb = 1000; // Hz
// Therefore
R1 = 1/(2*%pi*fb*C1);
printf(' The calculated value of R1 = %.2f kΩ. \n',R1/1000);
// Since, RfCf = R1C1
// Therefore we get,
Cf = R1*C1/Rf;
printf(' The calculated value of Cf = %.2f µF. \n',Cf*10^6);

printf('\n\n For a sinusoidal input - \n\n');
disp("since, vi = sin(2*%pi*100*t),  ");
disp("From Eq. 4.69, vo = -Rf*C1* d/dt(vi), ");
disp("Above equation yield following result once solved-  vo = -cos(2*%pi*100*t).");
printf('\n The input and output waveforms are shown in Graphic window 0 ans 1 respectively. \n\n');
// plotting wave forms

t = [0:%pi:13*%pi];
figure(0);

a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin"; 
plot2d(t,sin(2*%pi*100*t));
title('Sine-wave-input',"color","Red","fontsize",3);
figure(1);

a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin"; 
plot2d(t,-cos(2*%pi*100*t));
title('Cosine-wave-output',"color","blue","fontsize",3);

printf('\n For a square wave input -\n\n');
printf('\n For a square wave input, say 1 V peak and 1 KHz,\n The output waveform will consist of positive and negative spikes of magnitude Vsat\n which is approximately 13 V for ± 15 V op-amp power supply.\n\n');
printf(' During the timeperiods for which input is constant at ±  1V, the differentiated output will be zero. \n However, when input transits between ±1V levels, \n the slope of the input is infinite for an ideal square wave. \n\n The output, therefore, gets clipped to about ± 13V for a ± 15 V op-amp power supply.');

printf('\n\n The output of a square wave input is a spike output as shown in Fig. 4.22(b). \n');
