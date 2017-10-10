clc
//Variable Initialisation
Ea=200//Input Voltage of motor in volts
Ra=0.12//Armature resistance in ohm
La=12e-3//Armature Inductance in ohm
K=2//Motor constant in V-s/rad
Eb=150//Motor back EMF
Ia=30//Armature Current in Ampere
f=300//Chopper Frequency
//Solution
T=1/f
d=(Eb+(Ia*Ra))/Ea
ton=d*T
toff=(1-d)*T
t=Ra/La
Ea1=Ea
Imin=poly(0,'Imin');
Ia1=((Ea1-Eb)/Ra)*(1-%e^(-ton*t))+(Imin*%e^(-ton*t))
disp (Ia1 ,"Imax is")
Ea2=0
Imax=poly(0,'Imax');
Ia2=((Ea2-Eb)/Ra)*(1-%e^(-toff*t))+(Imax*%e^(-toff*t))
disp (Ia2 ,"Imin is")
a=poly(0,'a');
b=poly(0,'b');
Imax1=(10.409+(0.975*(-9.96)))/(1-(0.975*0.992))//From above displayed values and rounding off
Imin1=(-9.960)+(0.992*Imax1)
Im=Imax1-Imin1//Armature Current Excursion
printf('\n\n Maximum Armature Current=%0.1f Amp\n\n',Imax1)
printf('\n\n Minimum Armature Current=%0.1f Amp\n\n',Imin1)
printf('\n\n Armature Current Excursion=%0.1f Amp\n\n',Im)
