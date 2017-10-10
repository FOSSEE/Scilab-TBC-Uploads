clc;
//A circuit is midpoint bised when the Q-point value of Vce is one half of Vcc.
//from example and 7.3
Vcc=8; //volt
Vbe=0.7; //volt
Rb=360000; //ohm
Ib=(Vcc-Vbe)/Rb; //Ampere
Hfe=100; 
Ic=Hfe*Ib;//Ampere
Rc=2000; //ohm
Vce=Vcc-Ic*Rc; //volt
disp('V',Vce,"Vce=");//The answers vary due to round off error
//Here we get Vce = (Vcc/2)
//We can conclude that the circuit is midpoint
