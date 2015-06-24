//chapter10
//example 10.2
//page347
RF=.1;//ripple factor
Vldc=10;
//ripple factor=Vrms/Vldc
Vrms=Vldc*RF;
disp(Vrms)
Vp_p=2*sqrt(2)*Vrms;//peak to peak ripple
disp(Vp_p)//volts