// final flux = 0.8*initial flux
Ia1 = 73; //initial armature current (in amps)
Vt = 230; //(in volts)
Ra = 0.188; //armature circuit resistance 
n1 = 1150; //initial rotor speed (in rpm)
Ea1 = 216.3; //initial armature voltage 

Ia2 = (1/0.8)*Ia1 ; //final armature current 
Ea2 = Vt - (Ia2*Ra); //final armature voltage 

n2 = (Ea2/Ea1)*(1/0.8)*n1; //final rotor speed 

disp(n2,"final rotor speed(in rpm) = ")