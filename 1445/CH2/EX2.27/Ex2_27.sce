//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 27 // read it as example 26 in the book on page 2.79

disp("CHAPTER 2");
disp("EXAMPLE 27");

// Given
//Voltage across the circuit
//v=250.sin (314.t-10)
//current is given by
//i=10.sin(314.t+50)
//
//VARIABLE INITIALIZATION
V=250;                           //Amplitude in Volts
w=314;                           //angular spped
pv=-10;                          //phase angle in degrees
I=10;                            //Amplitude in Amps
pi=50                            //phase angle in degrees 
 
//SOLUTION
//v=Vsin(wt+pv)
//i=Isin(wt+pi)
//solution
//representing V in polar format as V=V0/sqrt(2) <θ, we get
v1=V/sqrt(2); 
i1=I/sqrt(2);  
//converting polar to rect
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*%pi/180);       // angle convert in radians
y=mag*sin(angle*%pi/180);
endfunction;
[x,y]=pol2rect(v1,pv);
V=x+y*%i;
[x,y]=pol2rect(i1,pi);
I=x+y*%i;
Z=V/I;
//convert back into angles in deg
function [mag,angle]=rect2pol(x,y);
mag=sqrt((x^2)+(y^2));          //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);      //to convert the angle from radians to degrees
endfunction; 
[mag,angle]=rect2pol(real(Z),imag(Z));
disp("SOLUTION (a)");
disp(sprintf("The impedance is  %d < %3d  Deg",  mag,angle));//text book answer is -60 deg
//disp(" "); 
//power factor=cos(angle)
pf=cos(-1*angle*%pi/180);       //convert to radians and change sign
disp(sprintf("The power factor is  %2.1f",  pf)); 
//Z=R-jXc by comparing real and imag paarts we get
disp(sprintf("The resistance is  %3.1fΩ and Reactance is %4.2fΩ",  real(Z), imag(Z))); 
disp(" "); 
// 
//END

