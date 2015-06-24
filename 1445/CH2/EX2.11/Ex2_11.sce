//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 11

disp("CHAPTER 2");
disp("EXAMPLE 11");

//VARIABLE INITIALIZATION
vdc=100;                      //DC voltage in Volts
vac=100;                      //AC voltage in Volts
f=50;                         //in Hertz
Idc=10;                       //dc current in Amperes
Iac=5;                        //ac current in Amperes

// coil means a unit of resistence and inductance both
//Impedence Z=R+jXl
//when DC supply is connected to coil, it behaves like a short circuit
//Xl=2.pi.f.L
//since f=0 in DC, Xl=0 ohms
//Therefore, R=Vdc/I

//Equation to be used
//Z^2=R^2+Xl^2

//SOLUTION
r=vdc/Idc;		//resistance of the coil in dc circuit
z=vac/Iac;		//impedance of the coil in Ac supply
xl=sqrt((z^2)-(r^2));	// inductive reactance of coil
L=xl/(2*%pi*f);		//inductance of the coil 
pf=r/z;			// power factor pf=R/Z
//
disp(sprintf("The inductive reactance of the coil is %5.2f Ohm",xl));
disp(sprintf("The inductance of the coil is %4.2f H",L));//text book answer is 0.05 H
disp(sprintf("The power factor of the coil is %3.1f (lagging)",pf));

//END



