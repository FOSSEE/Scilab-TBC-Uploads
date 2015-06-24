
//To Determine the value of resistor connected in series to run the fan at a particular speed
//Page 208
clc;
clear;
Pf=100*(10^3); //Power rating of the fan
f=50; //Supply Frequency
V=400; //Supply Line Voltage
V1=V/sqrt(3); //Phase Voltage
SR=1.4; //Ratio of stator to rotor turns
Rr=0.03; //Rotor Resistance per phase
R2=SR*SR*Rr; //Rotor Resistance referred to the stator
N=240; //Rated Speed
w=2*%pi*N/60; //Angular Frequency
P=24; //number of poles
Ns=120*f/P; //Synchronous Speed
ws=2*%pi*Ns/60; //Synchronous angular Frequency
s=(Ns-N)/Ns; //Slip
T=Pf/w; //Full Load Torque
x2=poly(0,'x2'); //Reactance of Rotor referred to stator, Variable Value

X=T-(3*(V1^2)*R2/(ws*s*(((R2/s)^2)+(x2^2)))); //Polynomial Expression to find X2
X2=roots(X(2)); //Numerical Value of Rotor Resistance
X2=X2(1);
N1=180; //Speed of the fan
s1=(Ns-N1)/Ns; //Slip
T1=T*((N1/N)^2); //Torque
R21=poly(0,'R21'); //Variable Value
Y=T1-(3*(V1^2)*R21/(ws*s1*(((R21/s1)^2)+(X2^2)))); //Polynomial Expression to find R21
R21=roots(Y(2)); //Numerical Value

//R21 = 0.7545054 and 0.0100813
//We have to choose the value of R21 such that it is greater than R2

R21=R21(1); 
Rex=(R21-R2)/(SR*SR); //External Resistance

printf('The Value of Resistance to be connected in series so that teh fan runs at 180 rpm is %g ohm\n',Rex)
