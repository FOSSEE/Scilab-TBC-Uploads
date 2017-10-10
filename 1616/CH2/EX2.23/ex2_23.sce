//ex2.23    fnd the input impedence of the line, its quality factor and the 3 dB bandwidth of the resonant circuit

v=2e8;
f=1e9;
lamda=v/f;
b=2*%pi/lamda;
alpha=0.173;       //nepers/m  the loss of the line
Q=b/(2*alpha);
f0=1e9;
BW=f0/Q;
Z0=75;
Zin=Z0*alpha;
disp('where l is the length','The 3dB bandwidth is = '+string(BW)+' Hz','The input impedence of the line is = '+string(Zin)+'l  ohm');

