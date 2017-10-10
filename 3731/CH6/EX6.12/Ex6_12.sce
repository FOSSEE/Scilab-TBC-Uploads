//Chapter 6:Induction Motor Drives
//Example 12
clc;

//Variable Initialization

//Ratings of the star connected Induction motor are same as that of Ex-6.9
f=50           // frequency in HZ
Vl=400         //line voltage in V
P=4            // number of poles
N=1370         //rated speed

//Parameters referred to the stator
Xr_=3.5        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=3          // resistance of the rotor windings in ohm
Rs=2           // resistance of the stator windings in ohm

//Solution
Ns=120*f/P     //synchronous speed
N1=Ns-N        //increase in speed from no load to full torque rpm

//(i)When f1=30Hz and 80% of full load
Ns=120*f/P
f1=30          //frequency 
N2=0.8*N1      //increase in speed from no load to 80% of full torque rpm
Ns1=f1/f*Ns
N=Ns1+N2       //machine speed

//(ii)At a speed of 1000rpm
N2=1000         //given speed in rpm
N3=N2-N1        //synchronous speed
f3=P*N3/120     //required frequency

//(iii)When frequency is 40Hz and speed is 1300 rpm
f4=40          //frequency in hz
N2=1300        //speed in rpm
Ns=120*f4/P    //required synchronous speed in rpm
N4=N2-Ns       //increase in speed from no load speed in rpm
Tf=25.37       //full load torque as calculated in Ex-6.11
Tm=-N4/N1*Tf   //motor torque

//(iv) when the motor is under dynamic braking


//Results

mprintf("(i)Required speed is :%d rpm",N)
mprintf("\n(ii)Required frequency is:%d Hz",f3)
mprintf("\n(iii)Required motor torque :%.2f N-m",Tm)
mprintf("\n(iv)The value of the frequency,speed and motor torque calculated in (i),(ii) and(iii)")
mprintf("    \nwill be the same when the motor is operated under dynamic braking")
