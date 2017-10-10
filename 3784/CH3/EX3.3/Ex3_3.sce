
clc
// Variable initialization
F=50 //Supply Frequency In Hz
Vm=400 //Supply Voltage In Volts
Ip=20 //Peak Circulating Current In Ampere
A=60 //firing angle

// solution
Ea=Vm/(sqrt(3))
W=2*%pi*F
Lr=[(3*sqrt(2)*Ea)/(W*Ip)]*(1-sind(A))
Lr1=Lr*1000//Inductance in mH
printf('\n\n Inductance Value Needed=%0.1f mH\n\n',Lr1)
//The answer vary due to round off error
