//a
Vt = 230; //(in volts)
Ia = 73; //armature current (in amps)
If = 1.6; //feild current (in amps)
Ra = 0.188; //armature circuit resistance(in ohms)
n = 1150; //rated speed of the rotor(in rpm)
Po = 20*746; //output power (in watts)

Ea = Vt - (Ia*Ra); //armature voltage 
wm = 2*%pi*n/60; //rated speed of the rotor (in rad/sec)
T = Ea*Ia/wm ; //electromagnetic torque 

disp("a")
disp(T,"electromagnetic torque = ")

//b
a = 4; //no. of parallel armature paths 
p = 4; //no. of poles
z = 882; //no. of armature conductors
flux = Ea*60*a/(p*z*n); //flux per pole (in Wb)

disp("b")
disp(flux,"flux per pole = ")

//c
Prot = (Ea*Ia) - Po; //rotational loss (in watt)
disp("c")
disp(Prot,"rotational losses = ")

//d
losses = Prot + (Ia^2 * Ra) + (Vt * If) ; 
Pi = (Ea*Ia) + (Ia^2 * Ra) + (Vt * If); //input power
efficiency = 1 - (losses/Pi);

disp("d")
disp(efficiency,"efficiency = ")