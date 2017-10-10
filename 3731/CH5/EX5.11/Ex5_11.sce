
//Chapter 5:Dc Motor Drives
//Example 11
clc;

//Variable Initialization

//Ratings of the separately excited motor
V=220     // rated voltage in V
N=600     // rated speed in rpm
Ia=500   // rated current in A
Ra=0.02   // armature resistance in ohms
Rf=10     // field resistance in ohms

//Solution   
Ia1=2*Ia
E1=V-Ia*Ra            //rated back emf at rated operation
Wm1=2*%pi*N/60    //angular speed
Trated=E1*Ia1/Wm1     //rated torque

//(i) When the speed of the motor is 450rpm
N1=450             //given speed in rpm
Tl=2000-2*N1       //load torque is a function of the speed as given
Ia2=Tl/Trated*Ia1  //for a torque of  Tl as a function of current
E2=N1/N*E1         //for a given speed of 450rpm
V2=E2+Ia2*Ra       //terminal voltage for a given speed of 450 rpm

//(ii) when the speed of the motor is 750rpm
N1=750          //given speed in rpm
Tl=2000-2*N1    //load torque is a function of the speed as given
Wm_=2*%pi*N1/60
Ke_phi1=E1/Wm1

//Since we know that V=Ke*phi*Wm+Ia*Ra  by solving we get that  0.02*(Ia_)**2 -220*Ia_ + 39270 = 0"
a = 0.02
b = -220
c = 39270

//Discriminant
d = (b**2) - (4*a*c)

Ia_1 = (-b-sqrt(d))/(2*a)
Ia_2 = (-b+sqrt(d))/(2*a)

Ke_phi=Tl/abs(Ia_1)
V1=V*Ke_phi/Ke_phi1   //required field voltage

//Results
mprintf("(i)Hence motor terminal voltage is :%.1f V",V2)
mprintf("\nAnd the armature current is :%.1f A",Ia2)
mprintf("\n(ii)The solutions for Ia_ are %.1f A and %.1f A",abs(Ia_1),abs(Ia_2))
mprintf("\nWe ignore %d A since it is infeasible,\n    Hence armature current is :%.1f A",abs(Ia_2),abs(Ia_1))
mprintf("\nHence the required field voltage is :%.1f V",V1)
