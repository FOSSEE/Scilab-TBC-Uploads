//Chapter 6:Induction Motor Drives
//Example 19
clc;

//Variable Initialization

//Ratings of the star connected Induction motor is same as that of Ex-6.17
f=50           // frequency in HZ
Vs=440         // line voltage in V
P=4            // number of poles
//Parameters referred to the stator
Xr_=1.2        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=0.4        // resistance of the rotor windings in ohm
Rs=0.5         // resistance of the stator windings in ohm
Xm=50          // magnetizing reatance
a=3.5          // stator to rotor turns ratio

//Solution
Ns=120*f/P              // synchronous speed in rpm
Wms=2*%pi*Ns/60     // synchronous speed in rad/s

//(i)When motor speed is 1200rpm with a voltage of 15+0j V

V=15*(cos(0)+sin(0)*%i)
N1=1200  //speed in rpm
Vr_=a*V          //rotor voltage
s1=(Ns-N1)/Ns    //slip at the given speed N1=1200 rpm
Z=Rs+Rr_/s1+%i*(Xs+Xr_)                   //total impedance
Ir_=(Vs/sqrt(3)-Vr_/s1)/Z            //rotor current
phi_r=atan(imag(Vr_),real(Vr_))-atan(imag(Ir_),real(Ir_))//angle between Vr_ and Ir_
Pr=3*(abs(Ir_))**2*Rr_                    //rotor copper loss
P1=3*abs(Vr_)*abs(Ir_)*cos(phi_r)    //power absorbed by Vr_
Pg=(Pr+P1)/s1              //gross power 
T=Pg/Wms                   //required motor torque

//(ii)when motor speed is 1200rpm with a unity power factor 
N1=1200  //speed in rpm
Ir_=abs(Ir_)
Ir_=Ir_*(cos(0)+sin(0)*%i)//machine is operating at unity power factor
x=Ir_*Z                      //x=(Vs-Vr_/s1)*phi_r   where phi_r is the angle between Vr_ and Ir_

//x=a+b
d=(Vs/sqrt(3)-Vr_/s1*cos(phi_r))**2
e=(Vr_/s1*sin(phi_r))**2
f=x/(d+e)
theta=atan(imag(f),real(f))//required angle in radian
theta=theta*180/%pi
//Now we should solve for the quadratice equation for the rotor current
//  0.9*Ir_**2 + 50.8*Ir_ + 90.12 = 0
a1 = 0.9
b1 = 50.8
c1 = 90.12

//Discriminant
d = (b1**2) - (4*a1*c1)

Ir_1 = (-b1-sqrt(d))/(2*a1)
Ir_2 = (-b1+sqrt(d))/(2*a1)

Ir_=Ir_2           //Ir_2 is chosen because for Ir_1 the motor is unstable
Vr_sin_phi_r=abs(Ir_)/2.083
Vr_cos_phi_r=s1*(Vs/sqrt(3)+2.5*Vr_sin_phi_r)
Vr_=Vr_cos_phi_r+%i*Vr_sin_phi_r   //total rotor voltage referred to the stator
Vr_=Vr_/a                          //total  rotor voltage referred to the rotor
var=atan(imag(Vr_),real(Vr_))
phase=var*180/%pi

//Results
mprintf("(i)The torque is :%.2f N-m and since it is negative the motor is operating in regenerative braking ",T)
mprintf("\n(ii)Now theta θ:%.2f ◦",theta)
mprintf("\nThe solution for Ir_ are %.3f and %.3f",Ir_1,Ir_2)
mprintf("\nWe choose Ir_:%.3f A since higher value corresponds to unstable region",Ir_2)
mprintf("\nHence the required voltage magnitude is Vr:%.2f V,phase:%.1f ◦",Vr_,phase)
//There is a slight difference in the answers due to accuracy
