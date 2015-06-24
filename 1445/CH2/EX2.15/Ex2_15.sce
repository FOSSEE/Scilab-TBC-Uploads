//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 15

disp("CHAPTER 2");
disp("EXAMPLE 15");

//GIVEN
//choke coil takes current of 2 Amp 60 deg lagging
//Applied voltage 200 V 50Hz

//VARIABLE INITIALIZATION
I=2;                          //in Amperes
angle_I=60;                   //in degrees
v1=200;                       //in Volts
f=50;                        //in Hertz

//SOLUTION (i)
z1=v1/I;               
disp(sprintf("The impedance is %d Ω, %d degrees",z1,angle_I));
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));   //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[r,x1]=pol2rect(z1,angle_I);
disp(sprintf("The resistance is %d Ω",r));
L=x1/(2*%pi*f);
disp(sprintf("The inductance is %5.3f H",L));

//SOLUTION (ii)
//Choke is now connected to 100 V 25 hz power supply
//Howevetr, R and L of the choke will remain the same
//Reactance will change
v2=100;             // in volts
f2=25;              // in Hz
x2=2*%pi*f2*L;		// inductive reactance in the new system
z2=sqrt((r^2)+(x2^2));	// impedance in the new system 
angle=atan(x2/r); 
I1=v2/z2;		// current in the new system
p=v2*I1*cos(-angle);	//power consumed
//
//disp(sprintf("The angle is %5.4f  ",angle));// text book value is assumed 0.75
disp(sprintf("The power consumed is %5.1f W",p));

//END


