clc
//Variable Initialisation
V=230//Input Voltage of motor in volts
f=300//Chopper Frequency
Tl=40//Load Torque in N-m
N1=900//Rated Speed of Motor in rpm
Ra=0//Armature resistance in ohm
La=12e-3//Inductance in Henry
k=2//Motor Constant
//Solution
Ia=Tl/k
W=2*%pi*N1/60
Eb=k*W
d=(Eb+(Ia*Ra))/V
t1=1/f
ton=d*t1
toff=(1-d)*t1
Z1=(V-Eb)/La
Z2=-Eb/La
A=Z1*ton //A=Imax-Imin
B=2*Ia //B=Imax+Imin
Imax=(A+B)/2
Imin=(B-A)/2

t=poly(0,'t');
x=Imin+Z1*t
y=Imax+Z2*t

disp (Imax ,"Maximum Armature Current in Amp is")
disp (Imin ,"Minimum Armature Current in Amp is")
disp (A ,"Armature Current Excursion in Amp is")
disp (x ,"Armature Current During Ton in Amp is")
disp (y ,"Armature Current During Toff in Amp is")
