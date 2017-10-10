//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 14

disp("CHAPTER 2");
disp("EXAMPLE 14");

//VARIABLE INITIALIZATION
v=100;                         //amplitude of rms value of voltage in Volts
I=20;                          //amplitude of rms value of current in Amperes 

//SOLUTION

//solution(i)
w=314;                         //angular frequency in radian/sec
f=w/(2*%pi);                   //as w=2*(%pi)*f
f=ceil(f);            
disp(sprintf("(i) The frequency is %d Hz",f));

//solution (ii)
E=v/sqrt(2);
angle_E=-45;                   //in degrees
I=I/sqrt(2);                   
angle_I=-90;                   //in degrees
z=E/I;
angle=angle_E-angle_I;
disp(sprintf("(ii) The impedance is %d Ω, %d degrees",z,angle));

function [x,y]=pol2rect(mag,angle1);
x=mag*cos(angle1*(%pi/180));   //to convert the angle from degrees to radian
y=mag*sin(angle1*(%pi/180));
endfunction;
[r,x]=pol2rect(z,angle);
L=x/(2*%pi*f);
disp(sprintf(" The inductance is %f H",L));

//END

 
