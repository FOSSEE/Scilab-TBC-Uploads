//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 9

disp("CHAPTER 2");
disp("EXAMPLE 9");


//VARIABLE INITIALIZATION
V=120;                        //voltage of lamp in Volts
P=100;                        //in Watts
Vsupp=220;                    //supply voltage in Volts
f=50;                         //in Hertz
//Equations to be used
//Z=R+jXl
//Vsupply=V+jVl=sqrt(V^2+Vl^2)
//Hence Vl=sqrt(Vsupply^2-V^2)
//P=VI
//Xl=2.pi.f.L

//SOLUTION
Vl=sqrt((Vsupp^2)-(V^2)); 
Xl=(V*Vl)/P;
L=Xl/(2*%pi*f);			//inductance
disp(sprintf("The pure inductance should have a value of %6.4f H",L)); //text book answer is 0.7046 H

//END
