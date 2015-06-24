disp('chapter 5 ex5.10')
disp('given')
disp('the output of sine wave Vp=.35Volt')
disp('the typical slew rate for 741 op-amp S=.5V/1*10^(-6)s')
disp('f2=800kHz')
Vp=5
S=.5/(1*10^(-6))
f2=800000
disp('tr(f2)=.35/f2')
trf2=.35/f2
disp('seconds',trf2)
disp('tr(s)=Vp/S')
trs=Vp/S
disp('seconds',trs)
disp('trs=1*10^(-6)')
trs=1*10^(-6)
disp('Vp=trs*S')
Vp=trs*S
disp('volts',Vp)
disp('f2=100kHz')
f2=100000
disp('tr(f2)=.35/f2')
trf2=.35/f2
disp('seconds',trf2)
disp('trs=3.5*10^(-6)')
trs=3.5*10^(-6)
disp('Vp=trs*S')
Vp=trs*S
disp('volts',Vp)