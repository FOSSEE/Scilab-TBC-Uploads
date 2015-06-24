//chapter 10
//example 10.14
//page 376
Rl=10;Iq=4.3*10^-3;
Vr=5;Il=.5;
// Il=Vr/R+Iq
R=Vr/(Il-Iq);
disp(R)
power=(Il^2)*R;//wattage of reisstor
disp(power)
Vout=Vr+Il*R;//output voltage with respect to ground
disp(Vout)
Vd=2;//minimum voltage drop across IC 7805 which is called as drop out voltage is 2V
Vin=Vout+Vd;
disp(Vin)