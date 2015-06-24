
//calculate the numbers of poles ,slip at full load,frequncy rotor,speed of motor
Ns=1000
N=960
f=50
P=120*f/Ns// synchronous speed
s=(Ns-N)/Ns
f1=s*f
N=Ns*(1-0.08)//speed of motor at 8% slip
disp('speed of rotor='+string(N)+'RPM')
