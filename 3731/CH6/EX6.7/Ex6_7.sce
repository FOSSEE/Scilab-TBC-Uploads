//Chapter 6:Induction Motor Drives
//Example 7
clc;

//Variable Initialization

//Ratings of the Star connected Induction motor
f=50           // frequency in HZ
Vl=2200        // line voltage in V
P=6            // number of poles

//Parameters referred to the stator
Xr_=0.5        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=0.12       // resistance of the rotor windings in ohm
Rs=0.075       // resistance of the stator windings in ohm
J=100          // combine inertia of motor and load in kg-m2

//Solution

//(i) During starting of the motor
Sm=Rr_/sqrt(Rs**2+(Xs+Xr_)**2)   //slip at maximum torque
Wms=4*%pi*f/P                     //angular frequency
x=Rs+sqrt(Rs**2+(Xs+Xr_)**2)
Tmax=(3/2/Wms)*(Vl/sqrt(3))**2/x  //maximum torque
tm=J*Wms/Tmax                          //mechanical time constant of the motor
ts=tm*(1/4/Sm+1.5*Sm)                  //time taken during starting
Es=1/2*J*Wms**2*(1+Rs/Rr_)             //energy disspated during starting

//(ii) When the motor is stopped by plugging method
tb=tm*(0.345*Sm+0.75/Sm)        //time required to stop by plugging
Eb=3/2*J*Wms**2*(1+Rs/Rr_)      //energy disspated during braking 

//(iii)Required resistance to be inserted during plugging
tb1=1.027*tm       //minimum value of stopping time during braking
x=1.47*(Xs+Xr_)    //x=Rr_+Re
Re=x-Rr_           //Re is the required external resistance to be connected
Ee=3/2*J*Wms**2*(Re/(Re+Rr_))      //energy disspated in the external resistor
Eb1=Eb-Ee                           //total energy disspated during braking 


//Results

mprintf("(i)Time taken during starting is ts:%.4f s",ts)
mprintf("   \nEnergy dissipated during starting is Es:%d kilo-watt-sec",Es/1000)
mprintf("\n\n(ii)Time taken to stop by plugging is tb:%.2f s",tb)
mprintf("    \nEnergy dissipated during braking is Eb:%d kilo-watt-sec",Eb/1000)
mprintf("\n\n(iii)Minimum Time taken to stop by plugging is tb:%.2f s",tb1)
mprintf("     \nRequired external resistance to be connected is Re:%.2f ohm",Re)
mprintf("     \nTotal Energy dissipated during braking is Eb:%.2f kilo-watt-sec",Eb1/1000)
