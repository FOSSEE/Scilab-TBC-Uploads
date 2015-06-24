clear;
clc;

  //x(t)=5u(t)....
  amp=5; //amplitude is 5
t=0:0.01:1;
x0=0;
x1=0:0.1:10; //  over a time interval of T
disp("the power of the signal (in watts) is");
 X=(integrate('25','x',x0,10)/(2*10)); // power of the signal
disp(X);

rms=amp/sqrt(2);
disp(rms,"the rms value of power is (in watts)");
