//Ex:1.51
clc;
clear;
close;
I=4;// peak current in Amp
Irms=I/sqrt(2);// rms current in Amp
Rr=18;// radiation resistance in ohm
Pr=Irms^2*Rr;// power radiated in Watts
Rl=(0.1*Rr)/0.9;// loss resistance in ohm
Pl=Irms^2*Rl;// ohmic loss in Watt
printf("The power radiated = %f Watts", Pr);
printf("\n The loss resistance = %d ohm", Rl);
printf("\n The ohmic loss = %f watts", Pl);