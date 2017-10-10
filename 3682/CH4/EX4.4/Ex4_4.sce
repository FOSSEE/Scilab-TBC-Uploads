// Exa 4.4

clc;
clear;

// Given data

// Refering integrator circuit in Fig. 4.23(c)
R1 = 10*1000; // Ω
Rf = 100*10^3; // Ω
Cf = 10*10^-9;  // Farads


// Solution

printf('For the given component values, the lower frequency limit of integration fa is ');
fa = 1/(2*%pi*Rf*Cf);
printf('%d Hz \n\n',fa);
printf(' For 99 percent accuracy, the input frequency should be at least one decade above fa. \n However, there is an limit up to which circuit will integrate and is determined by the frequency response of op-amp.\n However, as input frequency is increased, the output amplitude reduces as the gain of the integration falls\n at a rate of 6 dB/octave.\n\n' );

// case(1): Sine wave input
printf(' case(1) : For sine Wave Input \n');
printf('\n\n For a input of 1 V peak sine wave at 5 kHz, the integral of vi(t)=1*sin(2*pi*5000*t) is cosine function.\n');
t1 = 0:%pi:100*%pi;
disp("Input Function - vi = sin(2*%pi*5000*t);");
disp("Output Function - vo = 0.318*cos(2*%pi*5000*t);");
printf(' The input and output waveforms are depicted in Graphic window # 0\n');

vi = sin(2*%pi*5000*t1);  // Input 
vo = 0.318*cos(2*%pi*5000*t1);  // Output

a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";
plot(t1,vi,'ro-'); 
plot(t1,vo,'o-b');
legend(["Input Function","Output Function"]);
xlabel("time ");
ylabel("Vi,Vo");
title("Sine wave plot");

// case(2): Step input
printf('\n\n case(2) : Step input\n');
printf('\n\n If input is a step voltage vi = 1V for 0<t<=0.3msec, then the output voltage at t = 0.3 ms is ');
vos = (-1/(R1*Cf))*integrate('1','x',0,0.3*10^-3);
printf('%d V \n',vos);
printf('\n The output voltage is a ramp function with a slope of 10V/ms and is shown in graphic window #1\n');
yi = [1,1,1,1,1,1,1,1,1,1,1];
t2 = 0:0.1:1;  // time in milli sec
yo = -10*t2;
figure(1);
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin"; 
plot(t2,yi,'ro-');
plot(t2,yo,'o-b');
legend(["Input Function","Output Function"]);
xlabel("Time in millisec");
ylabel("Vi,Vo");
title("Step plot");

// case(3): square wave input
printf('\n\n case(3): Square wave input \n');
printf('\n\n The output waveform for an input of 5 kHz, 1 V peak square wave. \n It can be seen that input is of constant amplitude of 1 V from 0 to 0.1 msec and -1 V from 0.1 ms to 0.2 ms.\n Thus, the expected output waveform will be a triangular wave.');
vosq = -(1/(R1*Cf))*integrate('1','x',0,0.1*10^-3);
printf('\n The peak value of the output for first half cycle is %.1f V \n',vosq);
printf('\n Both input and output waveforms are depicted in graphic window #3\n');
t3 = 0:0.1*10^-3:10^-3;
zi = [1,-1,1,-1,1,-1,1,-1,1,-1,1];
zo = [0.5,-0.5,0.5,-0.5,0.5,-0.5,0.5,-0.5,0.5,-0.5,0.5];
figure(2);
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin"; 
plot2d2(t3,zi,2);
plot2d(t3,zo,4);
legend(["Input Function","Output Function"]);
xlabel("Time in sec");
ylabel("Vi,Vo");
title("Square wave plot");
