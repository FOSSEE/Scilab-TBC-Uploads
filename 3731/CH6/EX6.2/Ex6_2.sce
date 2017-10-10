//Chapter 6:Induction Motor Drives
//Example 2
clc;

//Variable Initialization
//Ratings of the Delta connected Induction motor
f=50           //frequency in HZ
Vl=2200        //line voltage in V
P=8            //number of poles
N=735          //rated speed in rpm

//Parameters referred to the stator
Xr_=0.55        // rotor winding reactance in ohm
Xs=0.45         // stator winding reactance in ohm
Rr_=0.1         // resistance of the rotor windings in ohm
Rs=0.075        // resistance of the stator windings in ohm

//Solution
Ns=120*f/P     //synchronous speed in rpm
s=(Ns-N)/Ns    //full load slip
x=sqrt((Rs+Rr_/s)**2+(Xs+Xr_)**2)   //total impedance
Ip=(Vl)/x                  //full load phase current
Il=sqrt(3)*Ip         //full load line current
Wms=2*%pi*Ns/60        
Tl=(1/Wms)*(3*Ip**2*Rr_/s) //full load torque

//(i)if the motor is started by star-delta switching
y=sqrt((Rs+Rr_)**2+(Xs+Xr_)**2)
Ist=(Vl/sqrt(3))/y                //Maximum line current during starting
Tst=(1/Wms)*(3*Ist**2*Rr_)             //Starting torque
ratio1=Tst/Tl                          //ratio of starting torque to full load torque
z=Rs+sqrt(Rs**2+(Xs+Xr_)**2)
Tmax=3/(2*Wms)*(Vl/sqrt(3))**2/z  //maximum torque
ratio2=Tmax/Tl                         //ratio of maximum torque to full load torque

//(ii) If the motor is started using auto transformer
y=sqrt((Rs+Rr_)**2+(Xs+Xr_)**2)
Ist1=Vl*sqrt(3)/y         //starting current direct online
aT=sqrt(2*Il/Ist1)        //transofrmation ratio
Ilst=2*Il/aT                   //starting motor line current
Ipst=Ilst/sqrt(3)         //starting motor phase current
Tst1=(1/Wms)*(3*Ipst**2*Rr_)    //starting torque

//(iii) If motor is started using part winding method
Rs_=2*Rs
Xs_=2*Xs
y=sqrt((Rs_+Rr_)**2+(Xs_+Xr_)**2)
Ist2=(Vl*sqrt(3))/y      //starting line current 
Ip=Ist2/sqrt(3)          //starting phase current
Tst2=(1/Wms)*(3*Ip**2*Rr_)    //starting torque

//(iv) motor is started using series reactors in line
Rs_=Rs/3  ;  Rr_=Rr_/3
Xs_=Xs/3  ;  Xr_=Xr_/3
Il=2*Il        //line current at start
x=(Vl/sqrt(3))**2/(Il**2)    //x=(Rs_+Rr_)**2+(Xs_+Xr_+Xe)**2
y=x-(Rs_+Rr_)**2                  //y=(Xs_+Xr_+Xe)**2
z=sqrt(y)                    //z=(Xs_+Xr_+Xe)
Xe=z-Xs_-Xr_


//Results

mprintf("(i)Maximum value of line current during starting Ist:%d A",Ist)
mprintf("\nRatio of starting torque to full load torque :%.3f",ratio1)
mprintf("\nRatio of maximum torque to full load torque :%.2f\n",ratio2)
mprintf("\n(ii)Transformation ratio aT:%.3f",aT)
mprintf("\nStarting torque :%d N-m\n",Tst1)
//Answer for the starting torque in the book is wrong due to accuracy

mprintf("\n(iii)Maximum line current during starting :%d A",Ist2)
mprintf("\nStarting torque :%d N-m\n",Tst2)
//Answer for the starting torque in the book is wrong due to accuracy

mprintf("\n(iv)Value of the reactor Xe:%.3f ohm",Xe)
