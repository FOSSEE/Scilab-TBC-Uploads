//Chapter 10
//Sketch the output Waveform 
//page no.  358
//Example10_3
//Figure 10.7
//Given
clc;
clear; 
T0=4;
t=-5.99:0.01:6;
t_temp=0.01:0.01:T0/4;
s=length(t)/length(t_temp);
dx=[];
x=[];
for i=1:s
    if modulo(i,2)==1  then
        dx=[dx -ones(1,length(t_temp))];
        x=[x .1*t_temp($:-1:1)];
    else
        dx=[dx ones(1,length(t_temp))];
        x=[x .1*t_temp]; 
    end
end
clf();
subplot(1,2,2)
plot(50*t,10*x-0.5,8)
xtitle("Output Waveform","Microsecond","V");
t=-30:0.01:30;
subplot(1,2,1);
plot('onn',10*t,[2*squarewave(2*t/(%pi),50)])
xtitle("Input Waveform","Microsecond","V");



