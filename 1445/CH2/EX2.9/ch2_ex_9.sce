//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 9

disp("CHAPTER 2");
disp("EXAMPLE 9");

//VARIABLE INITIALIZATION
v1=120;                        //voltage of lamp in Volts
p=100;                         //in Watts
v2=220;                        //supply voltage in Volts
f=50;                          //in Hertz

//SOLUTION
vl=sqrt((v2^2)-(v1^2)); 
xl=(v1*vl)/p;
L=xl/(2*%pi*f);
disp(sprintf("The pure inductance should have a value of %f H",L));

//END
