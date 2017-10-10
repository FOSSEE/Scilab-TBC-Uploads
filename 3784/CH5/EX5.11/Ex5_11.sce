clc
//variable Initialisation
Vm=240 //Terminal Voltage Of Motor In Volt
F=50 //Supply Frequency Of Motor
P=4 //Number Of Pole
R1=0.25 //Resistance Of Motor in Ohm
R2=0.60 //Resistance Of Motor in Ohm
X1=0.36//Reactance in Ohm
X2=0.36//Reactance in Ohm
Xm=17.3//Reactance In Ohm
Nr1=1400 //Speed Of Rotor In RPM
Nr2=600 //Speed Of Rotor In RPM

//Solution
#Case=1
W=((2*%pi)/60)*(Nr1)
Ns=(120*F)/(P) 
S1=(Ns-Nr1)/Ns
S2=(Ns-Nr2)/Ns
Zr=(R2/S1)+%i*(X2)
Zs=R1+%i*(X1)
Zt=Zr+Zs
Zin=(%i*(Xm)*(Zt))/(%i*(Xm)+(Zt))
Tl=1.4*((10)^-3)*(W)^2
n=Nr1/60
I2=sqrt((S1*Tl*2*%pi*n)/(3*R2*(1-S1)))
#Case=2
Zr1=(R2/S2)+%i*(X2)
Zs1=R1+%i*(X1)
Zt1=Zr1+Zs1
Zin1=(%i*(Xm)*(Zt1))/(%i*(Xm)+(Zt1))
W1=((2*%pi)/60)*(Nr2)
Tl1=1.4*((10)^-3)*(W1)^2
n1=Nr2/60
I3=sqrt((S2*Tl1*2*%pi*n1)/(3*R2*(1-S2)))
//Given base currents in Amp
Ib1=17.55
Ib2=100.27
Ip1=I2/Ib1
Ip2=I3/Ib2
printf('\n\n The per unit rotor Current for case 1=%0.1f\n\n',Ip1)
printf('\n\n The per unit rotor Current for case 2=%0.1f\n\n',Ip2)
