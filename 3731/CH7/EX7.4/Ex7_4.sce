//Chapter 7:Synchronous Motor and Brushless DC Motor Drives
//Example 4
clc;

//Variable Initialization

//Ratings of the synchronous motor
Pm=8*10**6     // power rating in W
f=50           // frequency in HZ
Vl=6600        // line voltage in V
pf=1           // unity power factor 
P=6            // number of poles
I=10           // rated field current in A
Xs=2.8         // reactance of the windings in ohm
Rs=0           // resistance of the windings in ohm
Rd=0.1         // Dc link inductor resistance in ohms
alpha=140      // constant firing angle in degrees 

//Solution
N=120*f/P                   //synchronous speed
V=Vl/sqrt(3)           //phase voltage
Is=Pm/(sqrt(3)*Vl*pf)  //rated current

Id=%pi/sqrt(6)*Is  //Dc line current
phi=180-alpha  //phase angle between Is and V in degrees

//(i) When motor operates at rated current and 500rpm
N1=500     //motor speed in rpm
f1=N1/N*f  //frequency at N1
V1=f1/f*V  //voltge at N1
phi=phi*%pi/180
Pm1=3*V1*Is*cos(phi) //power developed by the motor
//for the 3-phase load commutated inverter
alpha=alpha*%pi/180
Vdl=(3*sqrt(6)/%pi)*V1*cos(alpha)
Vds=-Vdl+Id*Rd
cos_alpha_s=Vds/(3*sqrt(6)/%pi*V)
alpha_s=acos(cos_alpha_s)  //in radian
alpha_s1=alpha_s*180/%pi


//(ii) Regenerative braking at 500rpm and at rated motor current
alpha=0  //firing angle
//When firng angle is zero then power factor is unity
pf=1

Pm2=3*V1*Is*pf   //power developed by the motor
Ps=Pm2-Id**2*Rd  //power supplied to the source
Vdl=(3*sqrt(6)/%pi)*V1*cos(alpha)
Vds=-Vdl+Id*Rd
cos_alpha_s=Vds/(3*sqrt(6)/%pi*V)
alpha_s=acos(cos_alpha_s)   //in radian
alpha_s2=alpha_s*180/%pi   //in degrees

//Results
disp('W',Pm1,"i)Power developed by the motor is:")
disp('°',alpha_s1,"Source side converter firing angle is")
disp('W',Ps,"ii)Power supplied to the source is:")
disp("°",alpha_s2,"Source side converter firing angle is")
//Answer given for firing angle in the book is wrong
