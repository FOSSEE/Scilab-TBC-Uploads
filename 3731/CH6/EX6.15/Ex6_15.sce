//Chapter 6:Induction Motor Drives
//Example 15
clc;

//Variable Initialization

//Ratings of the star connected Induction motor 
f=50           // frequency in HZ
Vl=400         //line voltage in V
P=4            // number of poles
N=1370         //rated speed
//Parameters referred to the stator
Xr_=3.5        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=3          // resistance of the rotor windings in ohm
Rs=2           // resistance of the stator windings in ohm
Xm=55          // magnetizing reactance in ohm

//Solution
Wms=4*%pi*f/P
Ns=120*f/P     //synchronous speed in rpm
s=(Ns-N)/Ns    //full load slip
x=%i*Xm*(Rr_/s+%i*Xr_)
y=Rr_/s+%i*(Xr_+Xm)
Z=Rs+%i*Xs+x/y        //total motor impedance
Isf=(Vl/sqrt(3))/abs(Z)                  //full load stator current
Irf_=Isf*(%i*Xm)/(Rr_/s+%i*(Xr_+Xm))          //full load rotor current
Tf=(3/Wms)*abs(Irf_)**2*Rr_/s                 //full load  torque
N1=Ns-N        //full load slip speed
//(i) When the motor is operating at 30Hz
f1=30          //given frequency in Hz
//At rated slep speedvalue of torque and stator current is same as the rated value
T=Tf 
Is=abs(Isf)    
Ns1=f1/f*Ns    //synchronous at f1=30Hz
N2=Ns1-N1      //required motor speed at 30Hz

//(ii)At a speed of 1200 rpm
N3=1200       //speed in rpm
Ns1=N3+N1     //required synchronous speed
f1=Ns1/Ns*f   //required frequency at N2=1200rpm

//(iii)When speed-torque curves are assumed to be straight lines at 30Hz at half the rated motor torque
f2=30          //frequency in Hz
N1_=N1/2       //slip at half the rated torque
Ns1=f2/f*Ns    //synchronous at f1=30Hz
N4=Ns1-N1_     //required motor speed

//(iv) When the motor is operating at 45hz  and braking torque is equal to rated torque
f3=45          //given frequency in Hz
N1_=-N1        //slip speed when braking at rated torque
Ns1=f3/f*Ns    //synchronous at f1=45Hz
N5=Ns1-N1_     //required motor speed


//results
mprintf("(i)At 30Hz the required value of Torque is T:%.2f N-m",T)
mprintf("\nStator current is Is:%.4f A",Is)
mprintf("\nMotor speed is :%d rpm",N2)
mprintf("\n(ii)Required inverter frequency is :%.2f Hz",f1)
mprintf("\n(iii)Required motor speed at 30Hz is:%d rpm",N4)
mprintf("\n(iv)Required motor speed at 45Hz is:%d rpm",N5)
