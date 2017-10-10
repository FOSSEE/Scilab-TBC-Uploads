clc;
//Armature reaction is neglected
Vt=220;//output voltage
Ra=0.2;//armature circuit resistance
Rf=110;//field circuit resistance
n1=1500;//speed of rotor at no load
Il1=5;//curent drawn by motor in ampere at no load & 1500 rpm
Il2=52;//curent drawn by motor in ampere at rated load & rated voltage
If=Vt/Rf;//shunt field current
Ia1=Il1-If;//armature current at no load
Ea1=Vt-Ia1*Ra;//counter emf at no load
Pr=Ea1*Ia1;//rotational losses at no load
//Rotational losses at full load & no load are same
Ia2=Il2-If;//armature current at full load
Ea2=Vt-Ia2*Ra;//counter emf at full load
Pem=Ia2*Ea2;//electromagnetic power
//Here phi_1(no load flux)=phi_2(full load flux), because the field current is constant & effect of AR is neglected.
//Ea1/Ea2=(n1*phi_1)/(n2*phi_2);where n1 & n2 are speed of rotor at no load & full load respectively.
n2=fix((n1*Ea2)/(Ea1));
Psh=Pem-Pr;//shaft power
Wm=(2*%pi*n2)/60;//angular velocity of shaft at full load
Tsh=Psh/Wm//shaft torque
printf('The motor speed is %f rpm.\n',n2);
printf('Rated shaft torque is %f Nm.',Tsh);
