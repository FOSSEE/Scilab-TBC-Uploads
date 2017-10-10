close();
clear;
clc;
//input current 'I', and voltage 'V', speed of armature 'N', Armature resistance 'Ra', field resistance 'Rf'
Ia1 = 20; //A
V1 = 400; //V
N1 = 250; //rpm
Ra = 0.6; //ohm
Rf = 0.4; //ohm
N2 = 350; //rpm

//(i)
//current ot run the device at N2
Ia2 = N2*Ia1/N1; //A

//(ii)
//Ea at N1
Ea1 = V1 - Ia1*(Ra+Rf);
//Applied voltage to run the device at N2
V2 = Ia2*(Ra+Rf) + Ea1*(Ia2*N2/(Ia1*N1));
mprintf(" Applied voltage to run the device at %d rpm = %0.1f V\n\n",N2,V2);
mprintf("Applied current to run the device at %d rpm = %d A",N2,round(Ia2));