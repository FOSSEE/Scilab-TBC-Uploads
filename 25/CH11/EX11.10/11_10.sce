//example:11.10,page no.-637.
// program to design a transistor oscillator at 4 GHZ using a GaAs FET in common gate configuration.
s11=2.18*expm(%i*(-35)*%pi/180);
s21=2.75*expm(%i*(96)*%pi/180);
s12=1.26*expm(%i*(18)*%pi/180);
s22=0.52*expm(%i*(155)*%pi/180);// all are s parameter that are applicable for transistor in common gate configuration with aseries inductor.
delta=s12*s21-s11*s22;
Ct=conj(s22-delta*conj(s11));
Rt=abs((s12*s21)/(abs(s22)^2-abs(delta)^2))
taot=0.59*expm(%i*(-104)*%pi/180);
taoin=s11+(s12*s21*taot)/(1-s22*taot);
[mag_taoin,theta_taoin]=polar(taoin)
Zin=((1+taoin)/(1-taoin))*Zo;
Zl=-(real(Zin)/3)-(%i*imag(Zin));
disp([mag_taoin,theta_taoin])
disp(Zl,'the load impedence will be = ')