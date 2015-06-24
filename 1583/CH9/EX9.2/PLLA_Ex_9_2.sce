clc
//chapter 9: Stability Analysis
//Example 9.2 page no 357
//given
Kv=50//DC gain
wL=10//corner frequency
disp('The system crossover frequecny is approximately 22 rad/s')
PhaseMargin=90-(atan(22/wL)*180/%pi)//phase margin of system
disp(PhaseMargin,'The phase margin is ')

