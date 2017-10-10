//Chapter 6:Induction Motor Drives
//Example 3
clc;

//Variable Initialization

//Ratings of the star connected Induction motor
f=50           // frequency in HZ
Vl=400         // line voltage in V
P=6            // number of poles

//Parameters referred to the stator
Xr_=2         // rotor winding reactance in ohm
Xs=Xr_        // stator winding reactance in ohm
Rr_=1         // resistance of the rotor windings in ohm
Rs=Rr_        // resistance of the stator windings in ohm

//Solution
Ns=120*f/P     //synchronous speed in rpm
Wms=2*%pi*Ns/60        

//(i)
Sm=-Rr_/sqrt(Rs**2+(Xs+Xr_)**2)   //slip at maximum torque
x=sqrt((Rs+Rr_/Sm)**2+(Xs+Xr_)**2)
Ir_=(Vl/sqrt(3))/x        //current at maximum torque 
Tmax=(1/Wms)*3*Ir_**2*Rr_/Sm   //maximum torque
N=(1-Sm)*Ns                    //range of speed

//(ii)an overhauling torque of 100Nm
Tl=100   //overhauling torque in Nm
// Tl=(3/Wms)*(Vl**2*Rr_/s)/y
// where y=(Rs+Rr_/s)**2+(Xs+Xr_)**2
a=(1/Wms)*(Vl**2*Rr_)/(-Tl)    //a=s*(Rs+Rr_/s)**2+(Xs+Xr_)**2
a = 17
b = 17.3
c = 1

//Discriminant
d = (b**2) - (4*a*c)

// find two solutions
s1 = (-b-sqrt(d))/(2*a)
s2 = (-b+sqrt(d))/(2*a)

N2=(1-s2)*Ns           //motor speed and we neglect s1 

//slight difference in the answer due to accuracy

//(iii)when a capacitive reactance of 2 ohm is inserted in each phase stator
Xc=2      //reactance of the capacitor in ohms
Sm=-Rr_/sqrt(Rs**2+(Xs+Xr_-Xc)**2)   //slip at maximum torque 
x=sqrt((Rs+Rr_/Sm)**2+(Xs+Xr_-Xc)**2)
Ir_=(Vl/sqrt(3))/x        //current at maximum torque 
Tmax_=(1/Wms)*3*Ir_**2*Rr_/Sm   //maximum overhauling torque with capacitor
ratio=Tmax_/Tmax


//Results
mprintf("(i)Maximum overhauling torque that the motor can hold is:%.1f N-m",abs(Tmax))
mprintf("      \nRange of speed is from %d to %d rpm\n",Ns,abs(N))
mprintf("\n(ii)Now s*(1+1/s)**2+16s=%d",a)
mprintf("\n    Or 17s**s+17.3s+1=0")
mprintf("\nThe solutions for s are %.3f and %.3f\n",s1,s2)
mprintf("\nTherefore Motor speed is:%d rpm\n",N2)
//Note :There is a slight difference in the answer due to the decimal place"
mprintf("\n(iii) Ratio of maximum torque with capacitor and to maximum torque without capacitor is:%.2f",ratio)
