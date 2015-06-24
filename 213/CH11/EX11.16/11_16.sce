//To find power transmitted
clc
//Given:
d1=400/1000 ,d2=250/1000, x=2, mu=0.4 //m
T=1200 //N
v=10 //m/s
//Solution:
//Power transmitted:
//Calculating the angle alpha for an open belt drive
alpha=asin((d1-d2)/(2*x))*180/%pi //degrees
//Calculating the angle of contact
theta=(180-2*alpha)*%pi/180 //radians
//Calculating the tension in the tight side of the belt
T1=T //Neglecting centrifugal tension, N
//Calculating the tension in the slack side of the belt
T2=T1/exp(mu*theta) //N
//Calculating the power transmitted
P=(T1-T2)*v/1000 //kW
//Results:
printf("\n\n Power transmitted, P = %.2f kW.\n\n",P)
//Power transmitted when initial tension is increased by 10%:
//Calculating the initial tension
T0=(T1+T2)/2 //N
//Calculating the increased initial tension
T0dash=T0+10/100*T0 //N
//Calculating the corresponding tensions in the belt
//We have, T0dash = (T1+T2)/2, or T1+T2 = 2*T0dash
//Ratio of the tensions, log(T1/T2) = mu*theta, or T1-T2*exp(mu*theta) = 0
A=[1 1; 1 -exp(mu*theta)]
B=[2*T0dash; 0]
V=A \ B
T1=V(1) //N
T2=V(2) //N
//Calculating the power transmitted
P1=(T1-T2)*v/1000 //kW
//Power transmitted when coefficient of friction is increased by 10%:
//Calculating the increased coefficient of friction
mudash=mu+10/100*mu
//Calculating the corresponding tensions in the belt
//Ratio of the tensions, log(T1/T2) = mudash*theta, or T1-T2*exp(mudash*theta) = 0
//Initial tension, T0 = (T1+T2)/2, or T1+T2 = 2*T0
A=[1 -exp(mudash*theta); 1 1]
B=[0; 2*T0]
V=A \ B
T1=V(1) //N
T2=V(2) //N
//Calculating the power transmitted
P2=(T1-T2)*v/1000 //kW
//Results:
if P1>P2 then
    printf(" Since the power transmitted by increasing the initial tension is more, therefore in order to increase the power transmitted we shall adopt the method of increasing the initial tension.\n\n")
else
    printf(" Since the power transmitted by increasing the coefficient of friction is more, therefore in order to increase the power transmitted we shall adopt the method of increasing the coefficient of friction.\n\n")
end
//Percentage increase in power:\
//Calculating the percentage increase in power when the initial tension is increased
I1=(P1-P)/P*100 //Percentage increase in power when the initial tension is increased, %
//Calculating the percentage increase in power when coefficient of friction is increased
I2=(P2-P)/P*100 //Percentage increase in power when coefficient of friction is increased, %
//Results:
printf(" Percentage increase in power when the initial tension is increased = %.2f %c.\n\n",I1,"%")
printf(" Percentage increase in power when coefficient of friction is increased = %.1f %c.\n\n",I2,"%")