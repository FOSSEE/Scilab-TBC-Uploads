//Determine following parameters

N = 7;
A = 1200;
Ct = 395;
Ts = 9597;
Tc = 358;
Te = 287.9;
Nc = 8637;

As = Ts/Tc;
E = Te/A;
Sd = Ts/A;
Cd = Nc/A;
Ae = A/N;
Cn = Tc/Ct;


disp(As, 'Avg. No. of subscribers/channel')
disp(E, 'Erlangs/mile2 )')
disp(Sd, 'Subscriber Density (in Subscribers/mile2)')
disp(Cd, 'Call Density (in calls/mile2)')
disp(Ae, 'Area of each cell (in miles2)')
disp(Cn, 'Channel Reuse factor')