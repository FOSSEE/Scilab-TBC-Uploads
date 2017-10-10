//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 11

clc;
disp("CHAPTER 2");
disp("EXAMPLE 11");

//VARIABLE INITIALIZATION
vdc=100;                      //DC voltage in Volts
vac=100;                      //AC voltage in Volts
f=50;                         //in Hertz
I1=10;                        //in Amperes
I2=5;                         //in Amperes

//SOLUTION
r=vdc/I1;
z=vac/I2;
xl=sqrt((z^2)-(r^2));
L=xl/(2*%pi*f);
pf=r/z;
disp(sprintf("The inductance of the coil is %f H",L));
disp(sprintf("The power factor of the coil is %f (lagging)",pf));

//END



