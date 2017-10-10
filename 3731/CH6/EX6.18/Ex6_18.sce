//Chapter 6:Induction Motor Drives
//Example 18
clc;

//Variable Initialization

//Ratings of the star connected Induction motor 
f=50         // frequency in HZ
Vl=440       // line voltage in V
P=6          // number of poles
N=970        // rated speed
n=2          // ratio of stator to rotor
Sm=0.25      // it is given the speed range is 25% below the synchronous speed which is proportional to the Slip

//Parameters referred to the stator
Xr_=0.4      // rotor winding reactance in ohm
Xs=0.3       // stator winding reactance in ohm
Rr_=0.08     // resistance of the rotor windings in ohm
Rs=0.1       // resistance of the stator windings in ohm
alpha=165    // maximum value of the firing angle in degress

//Solution
Ns=120*f/P   // synchronous speed
Wms=2*%pi*Ns/60
//(i) transformer turns ratio
al=alpha*(%pi/180)
a=-Sm/cos(al)  //since  Sm=a*math.cos(alpha)   
m=n/a        //since a=n/m where m is the transformer ratio

//(ii)When speed is 780 rpm and firing angle is 140 degrees
N1=780           //given speed
alpha1=140       //given firing angle
s1=(Ns-N1)/Ns    //slip at the given speed N1
Vd1=(3*sqrt(6)/%pi)*s1*(Vl/sqrt(3))/n
al1=alpha1*(%pi/180)
Vd2=(3*sqrt(6)/%pi)*(Vl/sqrt(3))/m*cos(al1)
Rs_=Rs*(1/n)**2   //stator resistance referred to the rotor
Rr=Rr_*(1/n)**2   //rotor resistance referred to the rotor
Rd=0.01           //equivalent resistance of the DC link inductor
Id=(Vd1+Vd2)/(2*(s1*Rs_+Rr)+Rd)
T1=abs(Vd2)*Id/s1/Wms     //required torque

//(iii)when speed is 800rpm and firing angle is half the rated motor torque
N1=800           //given speed
s=(Ns-N)/Ns      //rated slip
x=(Rs+Rr_/s)**2+(Xs+Xr_)**2
Trated=(3/Wms)*(Vl/sqrt(3))**2*(Rr_/s)/x          //rated torque
T_half=Trated/2        //half rated torque
s1=(Ns-N1)/Ns          //given slip at speed N1=800rpm
Vd1=(3*sqrt(6)/%pi)*s1*(Vl/sqrt(3))/n
Vd2=(3*sqrt(6)/%pi)*(Vl/sqrt(3))/m
Id=(Vd1+Vd2)/(2*(s1*Rs_+Rr)+Rd)
T=abs(Vd2)*Id/s1/Wms     //required torque

//since the given torque is half of the rated value
//To find the find the firing angle we assumed cos(alpha1)=-X
//The given quadratic equation is X**2-0.772X+0.06425=0
a = 1
b = -0.772
c = 0.06425
//Discriminant
d = (b**2) - (4*a*c)

X1 = (-b-sqrt(d))/(2*a)
X2 = (-b+sqrt(d))/(2*a)
alpha1=-acos(X2)   //since cos(alpha1)=-X where alpha1 is radians
alpha1=alpha1*(180/%pi)
alpha1=180+alpha1            //required firing angle


//Results
mprintf("(i)Transformer ratio is:%.3f",m)
mprintf("\n(ii)Required torque is :%.2f N-m",T1)
//There is a slight difference in the answer for the torque due to accuracy
mprintf("\n(iii)The half rated torque at the given speed of %d rpm is:%.2f N-m",N1,T_half)
mprintf("\nWith a slip of s:%.1f",s1)
mprintf("\nThe solutions for X are %.4f and %.4f",X1,X2)
mprintf("\nFor X1:%.4f the motor is unstable so we use X2:%.4f",X1,X2)
mprintf("\nHence the required firing angle is :%.1f °",alpha1)
