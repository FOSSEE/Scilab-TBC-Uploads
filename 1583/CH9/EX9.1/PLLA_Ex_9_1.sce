clc
//chapter 9: Stability Analysis
//Example 9.1 page no 357
//given
Kv=50//DC gain
wL=100//corner frequency
disp('The system crossover frequecny is approximately 50 rad/s')
PhaseMargin=90-(atan(50/wL)*180/%pi)//phase margin of system
disp('At this frequency the phase shift of the open loop transfer function is -112.5')
disp(PhaseMargin,'The phase margin is ')
