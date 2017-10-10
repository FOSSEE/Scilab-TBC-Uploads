//Chapter 6:Induction Motor Drives
//Example 4
clc;

//Variable Initialization

//Ratings of the motor are same as that in Ex-6.3
f=50           // frequency in HZ
Vl=400         //line voltage in V
P=6            // number of poles

//Parameters referred to the stator
Xr_=2         // rotor winding reactance in ohm
Xs=Xr_        // stator winding reactance in ohm
Rr_=1         // resistance of the rotor windings in ohm
Rs=Rr_        // resistance of the stator windings in ohm
N=950         //full load speed in rpm
SR=2.3        //stator to rotor turns ratio

//Solution
Ns=120*f/P     //synchronous speed in rpm
Wms=2*%pi*Ns/60        
s=(Ns-N)/Ns     //full load slip
x=sqrt((Rs+Rr_/s)**2+(Xs+Xr_)**2)
Irf_=(Vl/sqrt(3))/x         //full load current
Tf=(1/Wms)*3*Irf_**2*Rr_/s       //full load  torque

//(i)initial braking current and torque
S=2-s     //during plugging at 950rpm
y=sqrt((Rs+Rr_/S)**2+(Xs+Xr_)**2)
Ir_=(Vl/sqrt(3))/y         //initial braking current
ratio1=Ir_/Irf_
T=(1/Wms)*3*Ir_**2*Rr_/S       //initial braking  torque
ratio2=T/Tf

//(ii)when an external resistance is connected such 
//that maximum braking current is 1.5 times the full load current
Ir_=1.5*Irf_
x=(Vl/sqrt(3))/Ir_    //x=sqrt((Rs+(Rr_+Re_)/S)**2+(Xs+Xr_)**2)
y=x**2                     //y=(Rs+(Rr_+Re_)/S)**2+(Xs+Xr_)**2
z=y-(Xs+Xr_)**2            //z=(Rs+(Rr_+Re_)/S)**2
a=sqrt(z)             //a=(Rs+(Rr_+Re_)/S)
b=(a-Rs)*S                 //b=(Rr_+Re_)
Re_=b-Rs
Re=Re_/SR**2
T=(1/Wms)*3*Ir_**2*(Rr_+Re_)/S       //initial braking  torque
ratio=T/Tf


//Results
mprintf("(i)Ratio of initial braking current to full load current is:%.1f",ratio1)
mprintf("\nRatio of initial braking torque to full load torque is:%.2f\n",ratio2)
mprintf("\n(ii)Ratio of initial braking torque to full load torque when the resistance is added is:%.3f",ratio)
