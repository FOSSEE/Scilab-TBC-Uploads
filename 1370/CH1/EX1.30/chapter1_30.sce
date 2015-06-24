//example1.30
clc
disp("Let us divide the voltage waveform into two sections.")
disp("For 0<=t<=2, v(t)=mt  where,")
m=10/2
disp(m,"m=(10-0)/(2-0)=")
disp("Therefore,  i(t)=v(t)/R=5t/40=0.125t A")
i=0.125*2
disp(i,"At t=2, v(t)=10 V,  i(t)[in A]=0.125*2=")
m=(-10)/2
disp(m,"For 2<=t<=4, v(t)=mt+c    where   m=(0-10)/(4-2)=")
disp("Therefore,    v(t)= -5t+C")
c=5*4
disp(c,"Now at t=4,  v(t)=0  i.e.  0= -5*4+C   i.e    C=")
disp("Therefore,    v(t)= -5t+20")
disp("Therefore,    i(t)=v(t)/R= (-5t+20)/40= -0.125t+0.5")
disp("At t=4, v(t)= -5*4+20=0 V,  i(t)= -0.125*4+0.5= 0 V")
disp("Hence the waveform of the current passing through the resistance is as shown in the fig 1.105")
