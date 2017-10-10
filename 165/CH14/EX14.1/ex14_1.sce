//Example 14.1
clc;

//Design a differentiator
fa=800;            //Given Frequency in Hz
C1=0.1*10^-6;      //Assumed value of capacitor

//Feedback resistence
Rf=invr(2*%pi*fa*C1);
//Assume a std value of feedback resistence
Rf=2.2*10^3;

//Gain limiting frequency; fb=20fa
fb=20*fa;
R1=invr(2*%pi*fb*C1);
//Assume a std value of input resistence
R1=100;

//Feedback Capacitance
Cf=R1*C1/Rf;
//Assume a std value of feedback Capacitance
Cf=4.7*10^-9;

printf('\nAssumed value of Input capacitor C1 = %.2f uF \n',C1*10^6)
printf('\nValue of Input Resistor R1 = %.2f ohm \n',R1)
printf('\nValue of Feedback capacitor Cf = %.2f nF \n',Cf*10^9)
printf('\nValue of Feedback Resistor Rf = %.2f k ohm \n',Rf/1000)

Vp=2;        //Peak voltage in V
w=2*%pi*fa;
T=2*w;
t=0:50:T;
Vin=Vp*sin(t/2);
a=gca();
subplot(2,1,1);
plot(Vin);
Vpo=Rf*C1*2*2*%pi*800;
Vo=-Vpo*cos(t/2);
subplot(2,1,2);
plot(Vo);