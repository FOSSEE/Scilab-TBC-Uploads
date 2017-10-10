clc
//Variable Initialisation
V=400//Supply Voltage in Volts
f=50//Supply Frequency in Hz
P=4//No of Poles
N=1460//Rotor Speed in rpm
d1=0.2//Duty Ratio
s1=0.13//Given Slip
d2=0.6//Duty Ratio
s2=0.04//Given Slip
s3=0.0867//Slip of motor
Rs=0.08//Motor Resistance in ohm
Xs=0.95//Motor Reactance in ohm
Rr1=0.055//Motor Resistance in ohm
X21=0.5//Motor Reactance in ohm
Rd=0.0114//Resistance of link Inductor in ohm
K=2//Stator to Rotor Turns Ratio
//Solution
V1=V/sqrt(3)
Ns=120*f/P
Ws=2*%pi*Ns/60
Sm=Rr1/(sqrt((Rs^2)+((Xs+X21)^2)))//Slip at maximum Torque
X2=X21*(K^2)
R2=Rs*(K^2)
Rr=Rr1*(K)//Wrongly Calculated in Textbook
Radd=R2-Rr
Rw=(Radd-Rd)/(1-d1)//The answers vary due to round off error
Radd2=Rd+Rw*(1-d2)
R22=Radd2+Rr
Td=3*(V1^2)*R22/(s2*Ws*(((Rs+(R22/s2))^2)+((Xs+X2)^2)))
printf('\n\n External Resistance=%0.1f ohm\n\n',Rw)
printf('\n\n Torque at given condition=%0.1f N-m\n\n',Td)
//The answers vary due to round off error
