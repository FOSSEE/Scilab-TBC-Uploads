//Chapter 6:Induction Motor Drives
//Example 20
clc;

//Variable Initialization

//Ratings of the single phase Induction motor 
f=50           // frequency in HZ
Vs=220         // supply voltage in V
P=4            // number of poles
N=1425         // rated speed in rpm

//Parameters referred to the stator
Xr_=6          // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=5          // resistance of the rotor windings in ohm
Rs=2           // resistance of the stator windings in ohm
Xm=60          // magnetizing reatance

//Solution
N1=1200      //when the motor is operating at the given speed in rpm
Ns=120*f/P   // synchronous speed
Wms=2*%pi*Ns/60
s=(Ns-N)/Ns   //rated slip

Zf=%i*(Xm)*(Rr_/s+%i*Xr_)/2/(Rr_/s+%i*(Xr_+Xm))
Rf=real(Zf)
Xf=imag(Zf)
Zb=%i*(Xm)*(Rr_/(2-s)+%i*Xr_)/2/(Rr_/(2-s)+%i*(Xr_+Xm))
Rb=real(Zb)
Xb=imag(Zb)
Zs=Rs+%i*Xs
Z=Zs+Zf+Zb
Is=(Vs)/Z
T=(abs(Is))**2/Wms*(Rf-Rb)
Tl=T
K=Tl/N**2

//Therefore for a speed of  of N1=1200 rpm we get 
Tl=K*N1**2      //required load torque for the given speed N1
s1=(Ns-N1)/Ns   // slip for the given speed N1

Zf=%i*(Xm)*(Rr_/s1+%i*Xr_)/2/(Rr_/s1+%i*(Xm))
Rf=real(Zf)
Xf=imag(Zf)
Zb=%i*(Xm)*(Rr_/(2-s1)+%i*Xr_)/2/(Rr_/(2-s1)+%i*(Xr_+Xm))
Rb=real(Zb)
Xb=imag(Zb)
x=(Wms*Tl)/(Rf-Rb)    //since Tl=(abs(Is))**2/Wms*(Rf-Rb)   and x=Is**2
Is=sqrt(x)
Z=Zs+Zf+Zb
V=Is*abs(Z)

//Result
mprintf("Hence the motor terminal voltage at the speed of%d rpm is :%.1f V",N1,V)
