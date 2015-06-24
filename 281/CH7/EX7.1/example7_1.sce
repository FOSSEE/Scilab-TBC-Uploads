disp('chapter 7 ex7.1')
disp('given')
disp('Design a nonsaturating precision half wave rectifier')
disp('peak output Vo=2volt')
Vo=2
disp('input peak value Vi=.5volt')
Vi=0.5
disp('frequency f=1MHz')
f=1*10^(6)
disp('supply voltage Vcc=+or-15volt and Vee=15volt')  //(using bipolar op-amp)
Vcc=15
Vee=15
disp('I1>IBmax')
disp('I1=500*10^(-6)A')  //for adequate diode current
I1=500*10^(-6)
disp('R1=Vi/I1')
R1=Vi/I1
disp('ohms',R1)   //standard value
disp('R2=Vo/I1')
R2=Vo/I1
disp('ohms',R2)
disp('use 3.9kohm standard value')
R2=3900
disp('R3=R1||R2')
R3=R1*R2/(R1+R2)
disp('ohms',R3)  //use 820ohm standard value
disp('for diode D1 and D2')
disp('Vr>[Vcc-(-Vee)]')
Vr=[Vcc-(-Vee)]
disp('volts',Vr)
disp('trr<T')
disp('let trrmax=T/10=1/(10*f)')
trrmax=1/(10*f)
disp('seconds',trrmax) //compensate the op-amp as a voltage follower