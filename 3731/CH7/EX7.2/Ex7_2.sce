//Chapter 7:Synchronous Motor and Brushless DC Motor Drives
//Example 2
clc;

//Variable Initialization

//Ratings of the synchronous motor is same as that of Example-7.1
Pm1=500*1000   // power rating in W
f=50           // frequency in HZ
Vl=3.3*1000    // line voltage in V
pf=0.8         // power factor lagging
P=4            // number of poles
I=10           // field current in A
Xs=15          // reactance of the windings in ohm
Rs=0           // resistance of the windings in ohm
Pm=Pm1/2       // power at half the rated torque when the losses are neglected

//Solution
Wms=50*%pi     // synchronous speed in rad/sec
V=Vl/sqrt(3)  // phase voltage
Is=Pm1/(sqrt(3)*Vl*pf)  //rated current
rad=acos(pf)

Is=Is * (cos(-rad) + sin(-rad)*%i) //rated current in vector form
V=V * (cos(0) + sin(0))       //rated phase voltage in rectangular form 
E=V-Is*%i*Xs                 //back emf

//(i) at rated current and unity power factor
E1=V-abs(Is)*%i*Xs
delta=phasemag(E1)       //phase angle of E1
nd=delta*%pi/180
Pm=3*abs(V)*abs(E1)*sin(nd)/Xs   //mechanical power developed
T=Pm/Wms                //braking torque
If=abs(E1)/abs(E)*I     //field current

//(ii) at field current of 15A and 500kW output
If1=15           //field current
Pm=-500*1000    //output power 
E2=If1/I*abs(E)
sin_delta=Pm*Xs/(3*abs(V)*abs(E2))  
delta=asin(sin_delta)               //angle delta
Is=((E2*(cos(abs(delta))+sin(abs(delta))*%i))-V)/(%i*Xs) //armature current
Isn=phasemag(Is)
x=(Isn)*%pi/180        //phase angle of Is
power_factor=cos(x) //power factor


//Results
mprintf("i)Braking torque :%.1f N-m",T)
mprintf("\nField current:%.2f A",If)
mprintf("\nii)Armature current :%.2f %.2f ° A",abs(Is),Isn)
mprintf("\nPower factor:%.3f lagging",power_factor)
//Note :There is a slight difference in the answers
