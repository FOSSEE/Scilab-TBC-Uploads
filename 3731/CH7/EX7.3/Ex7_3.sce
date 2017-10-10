//Chapter 7:Synchronous Motor and Brushless DC Motor Drives
//Example 3
clc;

//Variable Initialization

//Ratings of the synchronous motor
Pm1=6*10**6     // power rating in W
f=50           // frequency in HZ
Vl=11*1000     // line voltage in V
pf=0.9         // power factor leading
P=6            // number of poles
I=10           // rated field current in A
Xs=9           // reactance of the windings in ohm
Rs=0           // resistance of the windings in ohm
N=120*f/P      // synchronous speed

//Solution
V=Vl/sqrt(3)           //phase voltage
Is=Pm1/(sqrt(3)*Vl*pf)  //rated current
rad=acos(pf)

//(i)To find torque and field current at rated armature current
//   at 750 rpm and 0.8 leading power factor
Is=Is * (cos(rad) + sin(rad)*%i)    //rated current in vector form
V=V *(cos(0)+sin(0)*%i)
E=V-Is*%i*Xs                //back emf

N1=750          //speeed in rpm
pf1=0.8         //given leading power factor
f1=N1/N*f       //required frequency
V1=abs(V)*f1/f  //required voltage
Xs1=Xs*f1/f     //required field resistance
E1=V1-Xs1*%i*(abs(Is) * (cos(acos(pf1))+sin(acos(pf1))*%i))   //rated back emf  in complex form 
E1_polar=abs(E1)                          //rated back emf in rectangular form        

//At rated field current and 750 rpm
E2=abs(E)*N1/N             //back emf at the given speed N1           
If=abs(E1)/E2*f            //field current at the given speed N1     
Pm=3*abs(V1)*abs(Is)*pf1   //power input at the given speed N1
Wm1=2*%pi*N1/60        //angular motor speed in rad/s
T=Pm/Wm1

//(ii) At half the rated motor torque and 1500 rpm and rated field current
Pm=6*10**6       //rated power rating in W
N1=1500          //speeed in rpm
f1=N1/N*f        //required frequency
Xs1=f1/f*Xs      //required field resistance
E1=abs(E)*f1/f   //back emf at rated field current 


Wms=Pm
Wms_=N1/N*Wms
Pm_= (0.5)*Wms_       //required power developed at N1=1500 rpm 

sin_delta=Pm_*Xs1/(3*abs(V)*abs(E1))       //since Pm=3*abs(V)*abs(E1)*sin(delta)/Xs  
delta=asin(sin_delta)                 //angle delta
Is=(abs(V)-(E1 * (cos(-delta)+sin(-delta)*%i)))/(%i*Xs1) //armature current
Is1=polar(Is)                         //aramture current in rectangular form
x1=phasemag(Is)
x1n=x1*%pi/180
power_factor1=cos(x1n)               //power factor

//(iii) at 750 rpm and rated field current from part(i)
N1=750         //speeed in rpm
pf1=0.8        //given leading power factor
f1=N1/N*f      //required frequency at N1=750 rpm
V1=abs(V)*f1/f //required voltage at N1=750 rpm
Xs1=Xs*f1/f    //required field resistance
E2=abs(E)*N1/N    

Pm=-4.2*10**6 //braking power output
sin_delta=Pm*Xs1/(3*abs(V1)*abs(E2))       //since Pm=3*abs(V)*abs(E1)*math.sin(delta)/Xs  
delta=asin(sin_delta)                 //angle delta
Is=(E2 * (cos(abs(delta))+sin(abs(delta))*%i)-V1)/(%i*Xs1) //armature current 
Is2=polar(Is)                         //aramture current in rectangular form
x2=phasemag(Is)
x2n=x2*%pi/180
power_factor2=cos(x2n) //power factor

//(iv)from part (ii) at 1500 rpm and from part(iii) the armature current of 349.9 A is taken
Is=Pm1/(sqrt(3)*Vl*pf)        //armature current as given from (i)
N1=1500           //speeed in rpm
f1=N1/N*f         //required frequency at N1=1500 rpm
Xs1=f1/f*Xs       //required field resistance
E1=abs(E)*f1/f    //at rated field current 
E2=V-%i*Xs1*Is
E2ph=abs(E2)
E2n=phasemag(E2)
E2na=E2n*%pi/180
If1=abs(E2ph)/abs(E1)*f   //required field current
Pm=3*abs(V)*(E2ph)*sin(abs(E2na))/Xs1   //power input
Wm1=2*%pi*N1/60   //motor speed in rad/sec
T1=Pm/Wm1

//Results
mprintf("\ni)Required torque is:%.1f N-m",T)
mprintf("\nField current :%.2f A",If)
mprintf("\nii)Armature current :%.1f  %.2f ° A",abs(Is1),x1)
mprintf(" \nPower factor :%.1f leading",power_factor1)
mprintf("\niii)Armature current :%.2f %.2f ° A",abs(Is2),x2)
mprintf("\nPower factor :%.3f lagging",power_factor2)
mprintf("\niv)Field current :%.2f A",If1)
mprintf("\nRequired torque is:%.1f N-m",T1)
//There is a slight difference in the answers
