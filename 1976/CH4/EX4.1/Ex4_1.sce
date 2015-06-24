
//To Determine Motor Parameters of Series Motor rated at 220V
//Page 201
clc;
clear;
V=220; //Rated Voltage
N=1000; //Rated Speed
Ish=20; //Current without Armature being shunted
Ra=0.15; //Armature Resistance
Rf=0.2; //Field Resistance
Eb=V-(Ish*(Ra+Rf)); //Back EMF
K=Eb/(Ish*N); //Motor Constant
Rsh=20; //Shunt Resistance

//After Armature is shunted
x=poly(0,'x'); //Field Current Variable Value
Ia=(Ish^2)/x; //Armature Current //Since Torque is assumed constant
I20=(V-(x*Rf))/Rsh; //Current Through the Shunt resistance

X=Ia+I20-x; //Polynomial to find field Current
x=roots(X(2)); //Numerical Value of Field Current

//Conditon to find the Positive Root
if(abs(x(1))+x(1)==0)
    x=x(2);
else
    x=x(1);
end

Ia=(Ish^2)/x; //Armature when shunted
Ebsh=V-(Ia*Ra)-(x*Rf); //Back Emf when shunted
Nsh=Ebsh/(K*x); //Speed when armature is shunted

//When Load is not there, Ia = 0
If=V/(Rsh+Rf); //Field Current at No Load
Ebnl=V-(If*Rf); //Back Emf at No Load
Nnl=Ebnl/(K*If); //Speed at No Load

Rex=5; //External Resistance
//At Starting when Eb = 0
Is=V/(Rex+Rf+(Ra*Rsh/(Ra+Rsh))); //Supply Current
Ifs=Is; //Field Current
Ias=Ifs*Rsh/(Rsh+Ra); //Armature Current At the Start

//Torque is directly proportional to square of Current
T20 = (Ish^2);  //Torque at shunted condition
Tas= Ias*Ifs; //Torque at start

RT=Tas/T20; //Ratio of Torques

printf('a) The Speed of the Motor if the Load Torque is remains constant and the magnetic circuit is assumed unsaturated is %g RPM\n',Nsh)
printf('b) The No Load Speed of the Motor is %g RPM\n',Nnl)
printf('c) The Starting Torque represented in terms of torque corresponding 20A (without armature shunted) is %g times\n',RT)
