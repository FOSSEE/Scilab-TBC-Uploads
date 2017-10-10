//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 41 // read it as example 40 in the book on page 2.99

disp("CHAPTER 2");
disp("EXAMPLE 41");

//VARIABLE INITIALIZATION 
lampV=100;                                //Volts
lampW=60;                                 //watts
V=250;
f=50;
//
//SOLUTION
lampI=lampW/lampV;
lampR=lampW/lampI^2;                    //W=I^2.R
//
disp("SOLUTION (a)");
disp(sprintf("The resistance of the lamp is t is %f Ohms", lampR));
//
//in purely resistive / non inductive circuit,V=IR applies, and R=lampR+R
R=V/lampI-lampR;
disp(sprintf("The value value of resistor to be placed in series with the lamp is %f Ohms", R));
//
//in case of inductance
//XL=2*%pi*f*L;
//V=Z.I where Z^2=R^2+XL^2
//L=sqrt((V^2/I^2-R^2)/2*%pi*f)
L=sqrt((V/lampI)^2-lampR^2)/(2*%pi*f);
disp(sprintf("The  inductive resistance to be placed is %f H",L));
disp(" "); 
// 
//END


