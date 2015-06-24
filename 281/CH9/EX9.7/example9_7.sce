disp('chapter 9 ex9.7')
disp('given')
disp('design a monostable multivibrator to have output pulse width 1ms when triggered by 2volt,100*10^(-6)s input pulse')
disp('using 741 op-amp with a supply of +or-12volt')
PW=1*10^(-3)
t=100*10^(-6)
disp('I2>IBmax')
disp('let I2=50*10^(-6)A and VBE=0.7volt')
IBmax=500*10^(-9)
I2=50*10^(-6)
VBE=0.7
Vcc=12
disp('let VR2<Vi')
disp('let VR2=0.5volt')
VR2=0.5
disp('R2=VR2/I2')
R2=VR2/I2
disp('ohms',R2)   //standard value
disp('R1=(Vcc-VR2)/I2')
R1=(Vcc-VR2)/I2
disp('ohms',R1)
disp('use 220kohm standard value')
R1=220000
disp('E=VR2-[-Vosat]')
E=VR2-[-Vcc+1]
disp('volts',E)
disp('Eo=-(+Vosat-VR2)')
Eo=-(Vcc-1-VR2)
disp('volts',Eo)
disp('ec=Vosat')
ec=Vcc-1
disp('volts',ec)
disp('C2=PW/((R1||R2)*ln[(E-Eo)/(E-ec)])')
C2=PW/((R1*R2/(R1+R2))*2.303*log10([(E-Eo)/(E-ec)]))
disp('farads',C2)
disp('R3max=0.1*VBE/IBmax')
R3max=0.1*VBE/IBmax
disp('ohms',R3max)
disp('use 120kohm standard value')
R3=120000
disp('C1=0.1*t/R3')
C1=0.1*t/R3
disp('farads',C1)
disp('use 91pF standard value')