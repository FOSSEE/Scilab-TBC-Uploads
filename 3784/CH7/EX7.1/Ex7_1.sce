clc 
//variable initialization
V=440 //voltage in volts
P=6 //number of poles
f=50 //frequency in Hz
R=0.3 //rotor resistance in ohm
X=1 //leakage reactance in ohm
s=0.03 //slip
N=800 //speed in rpm
K=2.2 //stator to rotor ratio

//solution
Ns=(120*f)/6
w=(2*%pi/60)*Ns
Tf=(3/w)*((V^(2))*(R/s))*(1/(((R/s)^(2))+(X^(2))))
k=Tf/((Ns*(1-s))^(2))
Tl=k*(N^(2))
s1=((Ns-N)/Ns)
Re=(X^(2))*(s*Tl*w)*(1/(3*(V^(2))-(Tl*w)))
X1=14.78
X2=0.07
Ree=(X1*0.2)-0.3
Ree1=(X2*0.2)-0.3
//since negative value of resistance is not feasible
Ree=2.656
//Rotor -referred value of external resistance
Rex=Ree/K^(2)
printf('\n\n The Resistance to be inserted in rotor circuit=%0.1f ohm\n\n',Rex)
