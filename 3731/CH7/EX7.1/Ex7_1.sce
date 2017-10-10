//Chapter 7:Synchronous Motor and Brushless DC Motor Drives
//Example 1
clc;

//Variable Initialization

//Ratings of the synchronous motor
Pm1=500*1000   // power rating in W
f=50           // frequency in HZ
Vl=3.3*1000    // line voltage in V
pf=0.8         // power factor lagging
P=4            // number of poles
I=10           // field current in A
Xs=15          // reactance of the windings in ohm
Rs=0           // resistance of the windings in ohm
Wms=50*%pi // synchronous speed in rad/sec
Pm=Pm1/2       // power at half the rated torque when the losses are neglected

//Solution
V=Vl/sqrt(3)  //phase voltage
Is=Pm1/(sqrt(3)*Vl*pf)   //rated current
rad=acos(pf)

Is=Is * (cos(-rad) + sin(-rad)*%i)   //rated current in vector form
V=V * (cos(0) + sin(0))       //rated phase voltage in rectangular form
E=V-Is*%i*Xs                  //back emf

//(i) When field current has not changed
sin_delta=Pm*Xs/(3*abs(V)*abs(E))  
delta=asin(sin_delta)                 //angle delta
Is=(V-(abs(E) * (cos(-delta) + sin(-delta)*%i)))/(%i*Xs)   //armature current
Is1=[]
Is1(1)=abs(Is)
Isp=phasemag(Is)
x=Isp
n1=x*%pi/180
power_factor=cos(n1)    //power factor 

//(ii) At unity power factor and rated torque
cos_phi=1
Is=Pm1/(3*V)         //since Pm1=3*V*Is
E1=V-Is*%i*Xs
If=abs(E1)/abs(E)*I  //field current

//(iii) At the field current of 12.5 A
If1=12.5      //field current 
E2=If1/I*abs(E)
Is=sqrt(E2**2-abs(V)**2)/Xs  //since E2=abs(V-Is*1j*Xs)
Pm=3*abs(V)*Is*cos_phi            //power output at the given field current
T=Pm/Wms                          //required torque

//results
mprintf("i)Armature current :%.2f %.1f ° A",abs(Is1),x)
mprintf("\nPower factor:%.2f lagging",power_factor)
mprintf("\nii)Field current at unity power factor at rated torque:%.2f A",If)
mprintf("\niii)Required torque is:%.1f N-m",T)
//There is a slight difference in the answer
