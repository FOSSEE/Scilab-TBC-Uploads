clc
//Variable Initialisation
V=230//Input Voltage of motor in volts
N=1750//Rated Speed of Motor in rpm
Ia=74//Armature Current in Ampere
Ra=0.180//Armature resistance in ohm
Vdc=240//Dc equivalent input to motor in Volts
f=500//Chopper Frequency
W0=2*f*%pi
la=2.93*10^(-3)//Armature inductance in Henry
//Solution
T=1/f//Period of Chopper
I0=Ia
W=2*%pi*N/60
Eb=V-(Ia*Ra)//Back EMF in Volts
k=Eb/W
Ea=Vdc/2//Average Voltage
Eb1=Ea-(Ia*Ra)
W1=Eb1/k
N1=W1*(60/(2*%pi))
ton=T/2
Irms=((sqrt(2)*Vdc)/(%pi*W0*la))*sin(W0*ton/2)
Irms1=sqrt((I0^2)+(Irms^2))
k1=Irms/I0
I01=Ia/2//Average Value of Source Current
Irms2=sqrt(2)*Ia/%pi
k2=Irms2/I01//Source Current Ripple Factor
printf('\n\n The Motor Speed=%0.1f rpm\n\n',N1)
printf('\n\n The RMS Armature Current=%0.1f Amp\n\n',Irms1)
printf('\n\n The RMS and line current ripple factor=%0.1f\n\n',k2)
