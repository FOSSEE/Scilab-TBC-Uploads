//Determine the efficiency of the TDMA system

e = 13;
d = 16.2
Tf = 40;
Mt = 6;
Bu = 30;
Nu = 395;
Bw = 12.5e+3;

t = (e/d)*(Tf/Mt);
Na = ((t*Mt)/Tf)*((Bu*Nu)/Bw)
Op = (1 - Na)*100;

disp(t, 'Time slot duration (in ms)')
disp(Op, 'Percentage Overhead portion of the frame (in %)')