   //============================================================================
//Chapter 7 Example 8


clc;
clear all;

//variable declaration
theta1      =1;         //pressure coil phase angle in  °
theta2      =2;         //pressure coil phase angle in  °
P1          = 700;          //wattmeter reading in W
P2          = 620;          //wattmeter reading in W
V           = 240;          //voltage in V


//calculations
x      = P1/P2;
//P1        =P*cos(theta2)*cos(phi-theta2)/cos(phi)
//P2         = P*cos(theta1)*cos(phi-theta1)/cos(phi)
//P1/P2     = cos(theta2)*cos(phi-theta2)/cos(phi)/cos(theta1)*cos(phi-theta1)/cos(phi)
//x        = cos(theta2)*cos(phi-theta2)/cos(phi)/cos(theta1)*cos(phi-theta1)/cos(phi)
//x         = (cos(theta2)/cos(theta1))*(cos(phi-theta2)/cos(phi-theta1))
//x         = y*(cos(phi-theta2)/cos(phi-theta1))
//(cos(phi-theta2)/cos(phi-theta1))     = x/y
y           = (cos(theta2*%pi/180)/cos(theta1*%pi/180));
z           = x/y;
//(cos(phi-theta2)/cos(phi-theta1))  = ((cos(thet2*%pi/180))*cos(phi))+(sin(thet2*%pi/180))*sin(phi))/((cos(theta1*%pi/180))*cos(phi))+(sin(thet1*%pi/180))*sin(phi))
//z     = ((cos(thet2*%pi/180))*cos(phi))+(sin(thet2*%pi/180))*sin(phi))/((cos(theta1*%pi/180))*cos(phi))+(sin(thet1*%pi/180))*sin(phi))
t           = ((z*cos(theta1*%pi/180))-(cos(theta2*%pi/180)))/((sin(theta2*%pi/180))-(z*sin(theta1*%pi/180)));
phi         = (atan(t))*180/%pi;
pf          = cos(phi*%pi/180);
C           = (phi-theta2)
c              = cos(C*%pi/180);
a           = (cos(theta2*%pi/180));
b           = a*c;
B           = P1*pf;
P           = B/b;
I           = P/(V*pf);

//result
mprintf("actual power = %3.3f W",P);
mprintf("\ncurrent drawn = %3.2f A",I);
