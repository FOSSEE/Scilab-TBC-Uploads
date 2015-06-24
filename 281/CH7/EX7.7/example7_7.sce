disp('chapter 7 ex7.7')
disp('given')
disp('design op-amp circuit using a supply of +or-12volt')
disp('voltage Vp=+or-5volt')
disp('frequency f=10kHz square wave from signal source with resistance Rs=100ohm')
Vcc=12
Vee=12
Vp=5
Rs=100
f=10000
disp('C1=1/(2*Rs*f)')
C1=1/(2*Rs*f)
disp('farads',C1)   //standard value
disp('v=1%of 5 volt')
v=.01*5
disp('volts',v)
disp('R1=Vp/(C1*v*f)')
R1=Vp/(C1*v*f)
disp('ohms',R1)   //use 22kohm standard value
disp('R2=R1=22kohm')
disp('for diodes D1 and D2,Vr>[Vcc-(-Vee)]')
Vr=[Vcc-(-Vee)]
disp('volts',Vr)
disp('trr<T')
disp('trrmax=1/(10*f)')
trrmax=1/(10*f)
disp('seconds',trrmax)
disp('compensate the op-amp as for a voltage follower')