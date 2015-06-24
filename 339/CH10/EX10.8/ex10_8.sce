fRF=1.89*10^9; //RF frequency
BW=20*10^6; //Bandwidth
fIF=200*10^6; //Intermediate Frequency
flo=fRF+fIF; //Local oscillator frequency
Q=fIF/BW; //Quality factotr
disp(Q,"Quality Factor");