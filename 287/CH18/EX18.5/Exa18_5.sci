////Determine the traffic intensity during the eight-hour period and the busy hour

n = 11;
t = 8;
Cd1 = 3+10+7+10+5+5+1+5+15+34+5;
Cd2 = 34+5;
CAR2 = 2;

CAR1 = n/t;
Hbar1 = Cd1/(n*60);
Hbar2 = Cd2/(CAR2*60);

I1 = CAR1 * Hbar1 ;
I2 = CAR2 * Hbar2 ;

disp(I1*36, 'Traiffic Intensity (in CCS)')
disp(I2*36, 'Traiffic Intensity during busy hour (in CCS)')