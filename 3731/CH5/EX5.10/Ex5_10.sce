//Chapter 5:Dc Motor Drives
//Example 10
clc;

//Variable Initialization


V=220     // rated voltage in v
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
x=(V+E1)/Ia1   //x=Rb+Ra
Rb=x-Ra        //required braking resistance

//(b)To obtain the expression for the transient value of speed and current including the effect of armature inductance
//The values given below are taken from Ex-5.9
ta=0.194                    //time constant in sec
B=0
tm1= %inf           //tm1=J/B and B=0 which is equal to infinity
tm2=1.274
K=1.967
Trated=E*Ia/Wm             //rated torque
Tl=0.5*Trated              //load torque is 50% of the rated torque
Ra=Rb
K1=N1*2*%pi/60         //initial speed in rad/s
//Values of the coefficient of the quadratic equation for Wm
x1=(1+ta/tm1)/ta
x2=1/tm2/ta
x3=-(K*V+Ra*Tl)/J/Ra/ta   
//Values of the coefficient of the quadratic equation ia
y1=(1+ta/tm1)/ta
y2=1/tm2/ta
y3=-B*V/J/Ra/ta+K*Tl/J/Ra/ta   

//solving the quadratic equation
a = 1 
b = x1
c = x2
//Discriminant
d = (b**2) - (4*a*c)

alpha1 = (-b+sqrt(d))/(2*a)
alpha2 = (-b-sqrt(d))/(2*a)

K3=x3/x2
K4=y3/y2

Wm_0=K1                       ;ia_0=0
d_Wm_dt_0=(K*ia_0-B*Wm-Tl)/J  ;d_ia_dt_0=(-V-Ra*ia_0-K*K1)/La    //Wm=K1 at t=0 and during braking rated voltage V is equal to -V

a = [1,1;real(alpha1),real(alpha2)]
b = [Wm_0;d_Wm_dt_0]
x = inv(a)*b
c = [1,1;real(alpha1),real(alpha2)]
d = [-K4;d_ia_dt_0]
y = inv(c)*d

//(c)To calculate the time taken for the speed to fall to zero value
a=-K3/x(1)                      //a=exp(-0.966*t1)
t1=alpha1*log(a)           //take log base e on both sides


//Results
mprintf("(a)Hence the braking resistance is :%.3f ohm",Rb)
mprintf("\n(b)The solutions for alpha are %.3f and %.3f",real(alpha1),real(alpha2))
mprintf("\nWm=%.2f + A*exp(%.3f*t) + B*exp(%.2f*t)",K3,real(alpha1),real(alpha2))
mprintf("\nia=%.2f+ C*exp(%.3f*t) + D*exp(%.2f*t)",K4,real(alpha1),real(alpha2))
mprintf("\nWe have to find the value of A,B,C and D in the linear equation using the initial condition")
mprintf("\nA=%.2f B=%.2f C=%.2f D=%.2f",x(1),x(2),y(1),y(2))
mprintf("\nHence the expression for the transient value for the speed is")
mprintf("\nWm=%.2f+%.2f*exp(%.3f*t)%.2f*exp(%.2f*t)",K3,x(1),real(alpha1),x(2),real(alpha2))
mprintf("\nHence the expression for the transient value for the current is")
mprintf("\nia=%.2f %.1f *exp(%.3f*t) +%.2f*exp(%.2f*t)",K4,y(1),real(alpha1),y(2),real(alpha2))
mprintf("\n(c)Hence the time taken is :%.2f sec",real(t1))
//There is slight difference in the answers due to accuracy
