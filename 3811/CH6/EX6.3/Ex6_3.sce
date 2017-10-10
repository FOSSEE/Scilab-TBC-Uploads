//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 6
//example 6.3
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vs=150;//source voltage of DC shunt motor in volt
n1=1200;//synchronous speed in rpm
Ra=2;//armature resistance in ohm
Rf=150;//field resistance in ohm
I=10;//line current in ampere
If1=(Vs/Rf);//Field current before adding the resistance in ampere
//Assume the resistance added in the field circuit to reduce the field current by 20%
If2=.8;//Field current after adding the resistance in ampere
Ia1=I-If1;//Armature current before inserting the resistance in ampere
Ia2=(If1*Ia1)/If2;//Armature current after inserting the resistance in ampere
disp(Ia2,'The armature current after inserting the resistance in ampere is:')
Ea1=Vs-(Ia1*Ra);
Ea2=Vs-(Ia2*Ra);
n2=(If1*n1*Ea2)/(Ea1*If2);
disp(n2,'The motor speed in rpm is:')
Radd=(Vs-(If2*Rf))/If2;
disp(Radd,'The value of added resistance in ohm is:')
P=If2^(2)*Radd;
disp(P,'The extra field loss due to the addition of resistance in watt is:')
