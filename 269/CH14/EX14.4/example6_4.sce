disp('chapter 14, example 4')
disp('given')
disp('Pav=500W, Q=500vars,Pf=0.707 lagging')//power factor=0.707 lag behind Q
disp('rms value of voltage=2v')
disp('angular frequency=2rad/sec')
Q=500
pf=0.707
pav=500
Qt=sqrt((pav/0.9)^2-pav^2)//power factor=pav/sqrt(pav^2+qt^2) and changed power factor = 0.9 lagging .This is done by connecting capacitor
disp(Qt)
Qc=Qt-Q
disp(Qc)
Vrms=2//rms value of voltage is 2 volts
W=2//angularfreq=2 rad/sec
c=Qc/(-Vrms^2*W)*10^-6
disp('Capacitor required for 0.9 power factor in microfarad  is')
disp(c)