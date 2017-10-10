clc;
//Page no:2-17
//Example-2.9
//power is 10kW with carrier unmodulated and 11.8kW with carrier sinusoidally modulated
ptotal=11.8;
pc=10;
u=sqrt(2*[(ptotal/pc)-1]);
disp(u,'Modulation index is ');
//with 30% modulation of another modulation signal
u1=0.6;
u2=0.3;
ut=sqrt(u1^2+u2^2);
disp(ut,'Total modulation index');
//rounding ut to 0.67
ut1=0.67;
PTotal=pc*(1+(ut1^2/2));
disp(+'kW',PTotal,'Total radiated power is ');
