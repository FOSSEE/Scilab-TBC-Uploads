// example:-9.10,page no.-524.
// design a bandpass filter using capacitive coupled resonators,with a 0.5 db equal passband haracteristic.
fo=2*10^9;delta=0.1;Zo=50;f=2.2*10^9;g1=1.5963;g2=1.0967;g3=1.5963;g4=1;
f=(1/delta)*((f/fo)-(fo/f));
x0=sqrt((%pi*delta)/(2*g1))/Zo; // x0=ZoJ1;
x1=((%pi*delta)/(2*sqrt(g1*g2)))/Zo; // x0=ZoJn;
B0=x0/(1-(Zo*x0)^2)
B1=x1/(1-(Zo*x1)^2)
theta0=(%pi-0.5*(atan(2*Zo*B0)+atan(2*Zo*B1)))*(180/%pi);
C0=(B0/(2*%pi*fo))*10^12;
disp(theta0,'thetao in degree = ')
disp(C0,'the coupling capacitor value in PF = ')