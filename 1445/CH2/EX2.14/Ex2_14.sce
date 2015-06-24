//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 14

disp("CHAPTER 2");
disp("EXAMPLE 14");

//given
//EMF e=100.sin(314.t-pi/4) V
//current i=20.sin (314.t-1.5808) Amp

//VARIABLE INITIALIZATION
v=100;                         //amplitude of rms value of voltage in Volts
I=20;                          //amplitude of rms value of current in Amperes 

//SOLUTION

//solution(i)
w=314;                         //angular frequency in radian/sec, given w.t=314.t
f=w/(2*%pi);                   //as w=2*(%pi)*f
f=ceil(f);            
disp(sprintf("(i) The frequency is %d Hz",f));

//solution (ii)
E=v/sqrt(2);
angle_E=-45;                   //in degrees, given in emf equation
I=I/sqrt(2);                   
angle_I=-(1.5808*180/%pi);   //converting the given angle value in current equation
                              // to degrees
                              //text book assumes it to be 90 degrees
                              // actually the value comes to 90.573168
z=E/I;
angle=angle_E-angle_I;
disp(sprintf("(ii) The impedance is %d Ω, %d degrees",z,angle));// text book answer is 45 deg
                                                                // the value comes to 45.573168 deg
                                                                // hence shall use floor() to round
//
//Equation
//Z=R+j.Xl
//Z=Z.cos (phi)+j.Zsin(phi)

function [x,y]=pol2rect(mag,angle1);
x=mag*cos(angle1*(%pi/180));   //to convert the angle from degrees to radian
y=mag*sin(angle1*(%pi/180));
endfunction;
//round the angle value first using floor
angle=floor(angle);
//disp(sprintf(" The angle is %f Degree",angle)); //testing value of angle
[r,x]=pol2rect(z,angle);
L=x/(2*%pi*f);
//
disp(sprintf(" The resistance is %f Ohm",r));//text book uses format as 5/sqrt(2)
disp(sprintf(" The reactance is %f  Ohm",x));//text book uses format as 5/sqrt(2)
disp(sprintf(" The inductance is %6.5f H",L));//text book answer is 0.01126 H

//END

 
