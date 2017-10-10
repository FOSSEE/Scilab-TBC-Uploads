disp('chapter 9 ex9.6')
disp('given')
disp('design an astable multivibrator to have a+or-9volt output with frequency f=1kHz')
disp('using BIFET op-amp for Vo=+or-9volt')
f = 1000;
Vo=9
disp('Vcc=+or-(Vo+1)')
Vcc=Vo+1
disp('volts',Vcc)
disp('select UTP and LTP<Vo')
disp('let |UTP|=|LTP|=0.5volt')
UTP=0.5
LTP=-0.5
disp('let R2=1Mohm')
R2=1*10^(6)
disp('I3=(|Vo|-UTP)/R2')
I3=(Vo-UTP)/R2
disp('amperes',I3)
disp('R3=UTP/I3')
R3=UTP/I3
disp('ohms',R3)
disp('use 5.6kohm standard value')
disp('let C1=0.1*10^(-6)F')
C1=0.1*10^(-6)
disp('t=1/(2*f)')
t=1/(2*f)
disp('seconds',t)
disp('I1=C1*(UTP-LTP)/t')
I1=C1*(UTP-LTP)/t
disp('amperes',I1)
disp('R1=(Vo-UTP)/I1')
R1=(Vo-UTP)/I1
disp('ohms',R1)
disp('use 39kohm and3.3kohm in series')