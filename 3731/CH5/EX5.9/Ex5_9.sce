//Chapter 5:Dc Motor Drives
//Example 9
clc;

//Variable Initialization

//Ratings of the separately excited motor which operates under rheostatic braking
V=220     // rated voltage in V
N=1000    // rated speed in rpm
Ia=175    // rated current in A
Ra=0.08   // armature resistance in ohms
N1=1050   // initial speed of the motor in rpm
J=8       // moment of inertia of the motor load system kg-m2
La=0.12   // armature curcuit inductance in H

//Solution
E=V-Ia*Ra
Wm=N*2*%pi/60     //rated speed in rad/s

//(a)When  the braking current is twice the rated current
Ia1=2*Ia
E1=N1/N*E
x=E1/Ia1   //x=Rb+Ra
Rb=x-Ra    //required braking resistance

//(b)To obtain the expression for the transient value of speed and current including the effect of armature inductance
Ra=x                   //total armature current
K1=N1*2*%pi/60     //initial speed in rad/s
K=E/Wm
B=0
ta=La/Ra                    //time constant in sec
Trated=E*Ia/Wm              //rated torque
Tl=0.15*Trated              //load torque is 15% of the rated torque
tm1= %inf           //tm1=J/B and B=0 which is equal to infinity
tm2=J*Ra/(B*Ra+K**2)

a = ta
b = -(1+ta/tm1)
c = 1/tm2

//Discriminant
d = (b**2) - (4*a*c)

alpha1 = (-b-sqrt(d))/(2*a)
alpha2 = (-b+sqrt(d))/(2*a)

K3=tm2*Tl/J
K4=tm2*K*Tl/J/Ra

//Transient value for speed
x1=((J*alpha2-B)*K1-(Tl-J*alpha2*K3))/(J*(alpha2-alpha1))
y1=((J*alpha1-B)*K1-(Tl-J*alpha1*K3))/(J*(alpha1-alpha2))

//Transient value for the current
x2=(K*K1+alpha2*La*K4)/(La*(alpha2-alpha1))
y2=(K*K1+alpha1*La*K4)/(La*(alpha1-alpha2))


//(c) To calculate the time taken by braking operation and the maximum value of the armature current
//now Wm=0 for the braking operation and hence 151.5 exp(-0.963*t1)- 8.247 = 0 from the previous answer in (b)
a=K3/x1    //a=exp(-0.963*t1)
t1=-alpha1*log(real(a))        //take log base e on both sides
//now d/dt(ia)=0 for themaximum current and hence d/dt(26.25-593.1exp(-0.963*t)+566.8exp(-4.19*t) = 0 from the previous answer in (b)
b=abs(alpha2*y2)/abs(alpha1*x2)    //b=exp(-0.963*t)/exp(-4.19*t)
t2=log(b)/(-alpha1+alpha2)    //take log base e on both sides
t2=abs(t2)
ia=K4-real(x2)*exp(real(-alpha1)*t2)-real(y2)*exp(real(-alpha2)*t2)


//Results
mprintf("(a)Hence the braking resistance is :%.3f ohm",Rb)
mprintf("\nb)The value of alpha1 :%.3f and alpha2 :%.3f ",real(alpha1),real(alpha2))
mprintf("\nHence the expression for the transient value for the speed is")
mprintf("\nWm=%.1f exp( -%.3f *t)%.1f exp(  -%.2f  *t) - %.3f",real(x1),real(alpha1),real(y1),real(alpha2),K3)
mprintf("\nHence the expression for the transient value for the current is")
mprintf("\nia=%.2f -%.1f exp(-%.3f*t) +%.1f exp(%.2f*t)",K4,real(x2),real(alpha1),-real(y2),-real(alpha2))
mprintf("\n(c)Hence the time taken is :%.2f sec",t2)
mprintf("\nHence the maximum current is:%.2f A",ia)
//There is a slight difference in the answers because of rounding
