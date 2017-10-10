//Chapter 6:Induction Motor Drives
//Example 1
clc;

//Variable Initialization

//Ratings of the Y-connected induction motor 
f=50           // frequency in HZ
Vl=440         //line voltage in V
P=6            // number of poles
N=950          //speed in rpm

//Parameters referred to the stator
Xr_=1.2        // rotor winding reactance in ohm
Rr_=0.4        // resistance of the rotor windings in ohm
Rs=0.5         // resistance of the stator windings in ohm
Xs=Xr_         // stator winding reactance in ohm
Xm=50          // no load reactance in ohms
 
//Solution
Ns=120*f/P     //synchronous speed in rpm
s=(Ns-N)/Ns    //full load slip
x=sqrt((Rs+Rr_/s)**2+(Xs+Xr_)**2)   //total impedance
Ir_=(Vl/sqrt(3))/x                  //full load rotor current
angle=-atan((Xs+Xr_)/(Rs+Rr_/s))    //angle in radian

Ir_=Ir_*(cos(angle)+sin(angle)*%i)                //full load rotor current in rectangular form
Im=Vl/sqrt(3)/Xm*(-%i)              //magnetizing current
Is=Ir_+Im                                //full load current

Zf=Rs+Xs*%i+%i*Xm*(Rr_/s+%i*Xr_)/(Rr_/s+%i*(Xr_+Xm))
Zb=Rs+Xs*%i+%i*Xm*(Rr_/(2-s)+%i*Xr_)/(Rr_/(2-s)+%i*(Xr_+Xm))
Z=Zf+Zb
I=(Vl/sqrt(3))/abs(Z)             //motor current
Wms=2*%pi*Ns/60

//Torque due to positive sequence
Tp=(1/Wms)*(3*I**2*Xm**2*Rr_/s)/((Rr_/s)**2+(Xr_+Xm)**2)

//Torque due to negative sequence
Tn=-(1/Wms)*(3*I**2*Xm**2*Rr_/(2-s))/((Rr_/(2-s))**2+(Xr_+Xm)**2)
T=Tp+Tn          //net torque
Wm=Wms*(1-s)     //rated speed in in rad/sec
Tl=0.0123*Wm**2 //required torque of the load

//Results
var=phasemag(Is)
mprintf("Full load motor current Is:%.1f %.1f ° A",abs(Is),var)
mprintf("\nTp:%.2f N-m",Tp)
mprintf("\nTn:%.3f N-m",Tn)
mprintf("\n\nSince I:%.2f A and N:%d rpm",I,N)
mprintf("\nAnd I:%.2f A< Is %.2f A, the motor will run safely",I,abs(Is))
