clc;
m=200;//kg, mass of motor
k1=150;//kN/m, constant of one spring
n=4;// No of spring
k=k1*4;//kN/m  Equivalent constant
k=k*1000;//N.m conversion
Wn=sqrt(k/m);//rad/s , Resonance speed


//Aplitude of vibration at 1200 rpm
W=1200*2*%pi/60;//rad/s 
m=0.03;//kg
r=150;//mm , unbalance rotor equivalent distance from axis of rotation
r=r/1000;//m, conversion to meter
Pm=m*r*W^2;//N, Centrifugal force due to unbalance of motor
Wf=W;//rad/s, forced circular frequency
Xm=Pm/k/(1-(Wf/Wn)^2)*1000;//Amplitude of vibration

Wn=Wn*60/2/%pi;//rpm, conversion to rpm
printf("Resonance speed=%.0f rpm \n",Wn);
printf("Aplitude of vibration at 1200 rpm is %.4f mm \n Negative sign shows it is out of phase",Xm);
