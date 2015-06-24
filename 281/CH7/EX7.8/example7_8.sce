disp('chapter 7 ex7.8')
disp('given')
disp('design a peak detector circuit')
disp('pulse-type signal voltage Vp=2.5volt with a rise time tr=5*10^(-6)s')
Vp=2.5
tr=5*10^(-6)
disp('output voltage is 2.5v for time th=100*10^(-6)s')
th=100*10^(-6)
disp('maximum output error is to be 1%')
disp('use BIFET op-amp for minimum capacitor leakage current')
disp('let R1=R2=1Mohm')
disp('C1 discharge current,Id=IrD2=1*10^(-6)A')
Id=1*10^(-6)
disp('v=1% of Vp')
v=.01*Vp
disp('volts',v)
disp('C1=Id*th/v')
C1=Id*th/v
disp('farads',C1)    //standard value
disp('for op-amp A1,Iomax=C1*Vp/tr')
Iomax=C1*Vp/tr
disp('amperes',Iomax)
disp('slewrate=3*Vp/tr')
slewrate=3*Vp/tr
disp('volts/us',slewrate)