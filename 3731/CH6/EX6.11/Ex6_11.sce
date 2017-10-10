//Chapter 6:Induction Motor Drives
//Example 11
clc;

//Variable Initialization

//Ratings of the star connected squirrel Induction motor are same as that of Ex-6.9
f=50           // frequency in HZ
Vl=400         // line voltage in V
P=4            // number of poles
N=1370         // rated speed

//Parameters referred to the stator
Xr_=3.5        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=3          // resistance of the rotor windings in ohm
Rs=2           // resistance of the stator windings in ohm

//Solution
Ns=120*f/P     //synchronous speed
N1=Ns-N        //increase in speed from no load to full torque rpm
Wms=2*%pi*Ns/60 //synchronous speed
s=(Ns-N)/Ns    //full load slip
D=Ns-N        //drop in speed from no load to full load torque at 50 Hz

//(i)When the frequency is 30 Hz and 80% of full load torque
f1=30          //given frequency in Hz
d=D*0.8        //drop in speed from no load to 80% full load torque
Ns1=120*f1/P   //synchronous speed at the given frequency f1=30 Hz
N1=Ns1-d       //required motor speed 

//(ii)When the speed is 1000 rpm for a full load torque
N2=1000       //given speed in rpm
Ns2=N2+D      //synchronous speed
f2=P*Ns2/120   //required frequency

//When the speed is 1100 rpm and the frequency is 40 Hz
N3=1100       //given speed in rpm
f3=40         //given frequency in Hz
Ns3=120*f3/P  //synchronous speed at the given frequency f1=40 Hz
D1=Ns3-N3     //drop in speed from no load to N1=1100 rpm
x=(Rs+Rr_/s)**2+(Xs+Xr_)**2
Tf=(3/Wms)*(Vl/sqrt(3))**2*(Rr_/s)/x      //full load  torque
T1=D1/D*Tf    //required torque 


//results
mprintf("(i)Hence the required motor speed is :%d rpm",N1)
mprintf("\n(ii)Hence the required frequency is :%.2f Hz",f2)
mprintf("\n(iii)Hence the required torque is :%.2f N-m",T1)
