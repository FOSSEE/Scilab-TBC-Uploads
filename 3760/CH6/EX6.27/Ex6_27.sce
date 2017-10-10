clc;
fs=2; //slip frequency
V=400;
f=50;
V2=340; //New voltage
f2=40;  //New frequency 
smT=0.1; //slip at which it develops maximum torque

//maximun torque's slip is directly proportional to (1/f)
smT1=(f/f2)*smT;

//Maximun Torque is directly proportional to ((V*V)/(f*f))
s=fs/f;
//Ted(Developed Torque) is proportional to (Tem/smT)*(s/smT)
//Ted1(400V,50Hz)proportional a
a=((V*V)/(f*f))*(s/smT);
//equating the developed torque equation
s1=a*(((f2)*(f2))/((V2)*(V2)))*(smT1);
fs1=s1*f2;
mprintf('The new slip frequency is %f Hz',fs1);





























