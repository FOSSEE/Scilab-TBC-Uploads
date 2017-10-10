//Chapter 6:Induction Motor Drives
//Example 4
clc;

//Variable Initialization

//Ratings of the star connected Induction motor
f=50           // frequency in HZ
Vl=440         // line voltage in V
P=6            // number of poles
Vp=Vl/sqrt(3)  //phase voltage in V

//Parameters referred to the stator
Xr_=1.2       // rotor winding reactance in ohm
Xs=Xr_        // stator winding reactance in ohm
Rr_=0.4       // resistance of the rotor windings in ohm
Rs=0.5        // resistance of the stator windings in ohm
Xm=50         // no load reactance in ohms
N=950         // full load speed in rpm
Sm=2          // slip at maximum torque

//Solution
Rr_=Sm*sqrt(Rs**2+(Xs+Xr_)**2)    //Since Sm=Rr_/sqrt(Rs**2+(Xs+Xr_)**2)
Ns=120*f/P      //synchronous speed in rpm
Wms=2*%pi*Ns/60        
s=(Ns-N)/Ns            //slip at 950 rpm

x=%i*Xm*(Rr_/s+%i*Xr_)
y=Rr_/s+%i*(Xr_+Xm)
Zp=Rs+%i*Xs+x/y
Ip=Vp/sqrt(3)/Zp    
//The value of Ip is wrong which leads to other wrong answers

Irp_=Ip*(%i*Xm)/(Rr_/s+%i*(Xr_+Xm))
Tp=(1/Wms)*3*abs(Irp_)**2*Rr_/s
x=%i*Xm*(Rr_/(2-s)+%i*Xr_)
y=Rr_/(2-s)+%i*(Xr_+Xm)
Zn=Rs+%i*Xs+x/y
In=Vp/sqrt(3)/Zn
Irn_=In*(%i*Xm)/(Rr_/(2-s)+%i*(Xr_+Xm))
Tn=-(1/Wms)*3*abs(Irn_)**2*Rr_/(2-s)    
//The value of In is wrong

T=Tp-Tn
I=abs(Ip)+abs(In)
Rr_=0.4    // from the parameters of the motor referred to the stator
x=sqrt((Rs+Rr_/s)**2+(Xs+Xr_)**2)
If=(Vl/sqrt(3))/x       //full load current
Tf=(1/Wms)*3*If**2*Rr_/s     //full load  torque

ratio1=I/If
ratio2=abs(T)/Tf

//Results
mprintf("Ratio of braking current to full load current is:%.3f",ratio1)
mprintf("\nRatio of braking torque to full load torque is:%.3f",ratio2)
//Answer provided in the book is wrong
