
//In solution they have taken different value of speed at rated torque from what is given in question that is why answer is varying
clc;
P=4;
Pm=10000; //OUTPUT POWER
f=50; //FREQUENCY
N=1440;  //SPEED AT WHICH RATED TORQUE IS OBTAINED
Ns=(120*f)/P;  //SYNCHRONOUS SPEED

s=(Ns-N)/Ns;
//Torque is directly proportional to the slip
//As per given conditions
s1=(1/2)*s;
Nr=Ns*(1-s1);
Pm1=(1/2)*(((Pm*60)/(2*%pi*N)))*((2*%pi*Nr)/(60));
mprintf('The motor speed is %f rpm \n The power output is %f W',Nr,Pm1);













































