//DTFT of numerical algorithms
//(a)For trapezoidal numerical integrator
ieee(2)
F=0:0.01:0.2;
HTF=1/(%i*2*tan(%pi*F'));
HIF=1/(%i*2*%pi*F');
Ha=1-((%pi*F')^2)/3-((%pi*F')^4/45);
//(b)For simphson's numerical integrator
Hb=((2*%pi*F')).*((2+cos(2*%pi*F'))./(3*sin(2*%pi*F')));
//For forward difference operator
HFF=(%e^(%i*2*%pi*F'))-1;
HDF=1/(%i*2*%pi*F');
Hc=1+(%i*2*%pi*F')/2-(2*%pi*F')^2/6;
Hc=abs(Hc);
//for central difference operator
HCF=sin(2*%pi*F')./(%i*4*%pi*%pi*F'^2);
Hd=abs(sin(2*%pi*F')./(2*%pi*F'));
length(F),length(Ha)
a=gca();
a.x_location="origin";
plot2d(F,Ha,rect=[0,0.8,0.2,1.1]);
plot2d(F,Hb);
xtitle("Magnitude spectrum of Integration algorithms","Digital Frequency F","Magnitude");
xset('window',1);
plot2d(F,Hc,rect=[0,0.8,0.2,1.1]);
plot2d(F,Hd);
xtitle("Magnitude spectrum of difference algorithms","Digital Frequency F","Magnitude");
