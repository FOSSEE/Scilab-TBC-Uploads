clc
//Variable Initialisation
Ea=200//Input Voltage of motor in volts
Ia=20//Armature Current in Ampere
Ra=0.33//Armature resistance in ohm
La=11e-3//Armature Inductance in ohm
N1=1200//Rated Speed of Motor in rpm
N2=800//Rated Speed of Motor in rpm
f=500//Chopper Frequency in Hz
//Solution
T=1/f
t=Ra/La
t1=1/t
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
E0=Eb2+(Ia*Ra)
d=E0/Ea
ton1=d*T
A=log(1+((Eb2/Ea)*((%e^(T/t1))-1)))//Ia2=0 & A=ton2/t
ton2=A*t1
printf('\n\n Duty Cycle=%0.1f\n\n',ton2)
//The answer provided in the textbook is wrong(answer given in textbook is in invalid range)
if ton2<ton1 then disp('Current is Continuous')
end
