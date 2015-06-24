clc
clear

//input data
m1=200 //internal mass in kg
m2=130 //mass after rocket operation in kg
m3=110 //payload,non-propulsive structure, etc in kg
tp=3 //rocket operation duration in sec
Is=240 //specific impulse in sec
g=9.81 //acceleration due to kravity in m/s^2

//calculation
MR=m2/m1 //mass ratio
Mp=m1-m2 //mass of propellant in kg
mp=Mp/tp //propellent flow rate in kg/s
wp=mp*g //weight flow rate of propellent in N/s
IMF=(m2-m3)/(m1-m3) //initial mass fraction
PMF=1-IMF //propellant mass fraction
F=Is*wp //thrust in N
TWRi=F/(m1*g) //initial thrust to weight ratio 
TWRf=F/(m2*g) //final thrust to weight ratio
av=F/m2 //Maximum accelaration of the vechicle in m/s^2
Cj=Is*g //effective exhaust velocity in m/s
It=Is*Mp*g*10^-3 //total impulse in kN-s, units of the answer given in the book is wrong
IWR=(It*10^3)/((m1-m3)*g) //impulse to weighr ratio, It in N-s

//output
printf('(A)mass ratio is %3.2f \n (B)propellent mass fraction is %3.3f \n (C)propellent flow rate is %3.1f kg/s\n (D)thrust is %3.1f N\n (E)thrust to weight ratio is %3.2f (intial) and %3.2f (final)\n (F)accelaration of the vechicle is %3.2f m/s^2\n (G)effective exhaust velocity is %3.1f m/s\n (H)total impulse is %3.3f kN-s\n (I)impulse to weighr ratio is %3.2f',MR,PMF,mp,F,TWRi,TWRf,av,Cj,It,IWR)
