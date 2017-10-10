clc
P=500e+3//power of motor in Watts
V=6.6e+3//rated voltage in Volts
f=60//frequency in Hz
n=6//no. of poles
Rs=0//resistnce of motor in ohm
Xm=78//reactance in ohm 
Xsr=3//reactance in ohm
p=0//pf=1
k=5

//solution
Xsr1=3*%i
Vph=V/sqrt(3)
Is=P/(3*Vph*cosd(p))
E=Vph-(Is*%i*Xsr)
E1=abs(E)
d=asind((Is*1*Xsr/E1))
Pm=3*Vph*E*sind(d)/Xsr
Pm1=abs(Pm)//Power in watt
Pm2=Pm1*10^(-3)//Power in Kw
Ns=120*f/n
N=Ns/k
wm=N*2*%pi/60
T=Pm1/wm
If1=E/(%i*Xsr)
Im=Is+abs(If1)
printf('\n\n Power Pm=%0.1f Kw\n\n',Pm2)
printf('\n\n Torque T=%0.1f N-m\n\n',T)
printf('\n\n The Field Current=%0.1f Amp\n\n',abs(If1))
printf('\n\n The motor Current=%0.1f Amp\n\n',Im)
//The answers vary due to round off error
