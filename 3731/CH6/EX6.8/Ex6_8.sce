//Chapter 6:Induction Motor Drives
//Example 8
clc;

//Variable Initialization

//Ratings of the delta connected Induction motor
f=50           // frequency in HZ
Vl=400         // line voltage in V
P=4            // number of poles
Pm=2.8*1000    // rated mechanical power developed in W
N=1370         // rated speed in rpm

//Parameters referred to the stator
Xr_=5          // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=5          // resistance of the rotor windings in ohm
Rs=2           // resistance of the stator windings in ohm
Xm=80          // no load reactance in ohm

//Solution
Ns=120*f/P                    //synchronous speed in rpm
Wms=2*%pi*Ns/60           //synchronous speed in rad/s
s=(Ns-N)/Ns                   //full load slip
x=(Rs+Rr_/s)**2+(Xs+Xr_)**2   //total impedance
T=(3/Wms)*(Vl**2*Rr_/s)/x     //full load torque
Tl=T
K=Tl/(1-s)**2                 //since Tl=K*(1-s)**2

//(i) When the motor is running at 1200 rpm
N1=1200            //speed in rpm
s1=(Ns-N1)/Ns      //slip at the given speed N1
Tl=K*(1-s1)**2     //torque at the given speed N1

y=(Rs+Rr_/s1)**2+(Xs+Xr_)**2   //total impedance
a=Tl*(Wms/3)*y*(s1/Rr_)        //Since T=(3/Wms)*(Vl**2*Rr_/s)/x      and a=V**2
V=sqrt(a)                 //required voltage at the given speed N1
Ir_=V/((Rs+Rr_/s1)+%i*(Xs+Xr_))//rotor current
Im=V/(%i*Xm)                   //magnetizing current
Is=Ir_+Im                      //total current
Il=abs(Is)*sqrt(3)        //line current

//(ii)When the terminal voltage is 300 V
V1=300  //terminal voltage in V
x=(Rs+Rr_)**2+(Xs+Xr_)**2   
T=(3/Wms)*(V1**2*Rr_)/x

//Now we have to solve for the value of slip 's' from the given equation 104s**4- 188s**3 + 89s**2 - 179s + 25=0"
coeff = [104,-188,89,-179,25]    //coeffcient of the polynomial equation 
s=[]
s=roots(coeff)                //roots of the polynomial equation

T=K*(1-real(s(4)))**2     //torque at the given terminal voltage of 300 V
N=Ns*(1-real(s(4)))       //speed at the given terminal voltage of 300 V
Ir_=V1/((Rs+Rr_/real(s(4)))+%i*(Xs+Xr_))//rotor current
Im=V1/(%i*Xm)                   //magnetizing current
Is=Ir_+Im                       //total current
Il1=abs(Is)*sqrt(3)        //line current


//Results
mprintf("(i)Required torque is Tl:%.1f N-m",Tl)
mprintf("\nRequired motor terminal voltage is V: %.1f V",V)
mprintf("\nRequired line current is Il:%.2f A",Il)
mprintf("\n(ii)The roots of the polynomial equation are s1:%.3f s2:%.3f s3:%.3f s4:%.3f",real(s(1)),real(s(2)),real(s(3)),real(s(4)))
mprintf("\nHence Only s4: %.3f is valid",real(s(4)))
mprintf("\nRequired torque is Tl:%.2f N-m",T)
mprintf("\nRequired speed is N:%.1f rpm",N)
mprintf("\nRequired line current is Il:%.2f A",Il1)
