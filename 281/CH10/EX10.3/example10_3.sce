disp('chapter 10 ex10.3')
disp('given')
disp('design a phase shift oscillator to have output frequency of 6kHz and to give maximum output of +or-3volt')
Vo=3
f=6000
disp('let I2=1mA when diodes are forward-biased,i.e peak output Vp=3volt and Vf=0.7volt')
I2=1*10^(-3)
Vf=0.7
disp('R1=Vo/29/I2')
R1=Vo/29/I2
disp('ohms',R1)
disp('use 100ohm standard value')
R1=100
disp('R2=29*R1')
R2=29*R1
disp('ohms',R2)
disp('R3=2*Vf/I2')
R3=2*Vf/I2
disp('ohms',R3)
disp('use 1.5kohm standard value')
R3=1500
disp('R4=R2-R3')
R4=R2-R3
disp('ohms',R4)
disp('R5=0.4*R4')
R5=0.4*R4
disp('ohms',R5)   //use a 1kohm potentiometer
disp('R6=0.8*R4')
R6=0.8*R4
disp('ohms',R6)  //use 1.2kohm standard value
disp('R=R1=100ohm')
R=100
disp('C=1/(2*%pi*R*f*sqrt(6))')
C=1/(2*%pi*R*f*sqrt(6))
disp('farads',C)  //standard value
disp('diodes D1 through D4,trrmax=T/10')
trrmax=1/(f*10)
disp('seconds',trrmax)
disp('Vrmax>Vcc=+or-15volt')
disp('the IN914 has trr=4ns and Vrmax=75volt use IN914 diodes')