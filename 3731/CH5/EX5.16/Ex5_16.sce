//Chapter 5:Dc Motor Drives
//Example 16
clc;

//Variable Initialization

//Ratings of the separately excited motor
V=220       // rated voltage in v
N=960       // rated speed in rpm
Ia=12.8     // rated current in A
Ra=2        // armature resistance in ohms
Vs=230      // source voltage in v
f=50        //frequency of the source voltage in hz
La=150e-3   // armature curcuit inductance in H

//Solution
E=V-Ia*Ra            //back emf
Vm=sqrt(2)*Vs   //peak voltage
Wm=2*%pi*N/60    //angular speed
W=2*%pi*f

//(i)When speed is 600rpm and the firing angle is 60 degrees
alpha=60       //firing angle in degrees
N1=600         //motor speed in rpm
x=W*La/Ra
phi=atan(x)
cot_phi=1/tan(phi)
Z=sqrt(Ra**2+(W*La)**2)
K=E/Wm

y=Ra*Vm/Z/K
alpha=alpha*%pi/180
b=sin(phi)*exp(-(alpha*cot_phi))
c=sin(alpha-phi)*exp(-(%pi*cot_phi))
a=1-exp(-(%pi*cot_phi))
Wmc=y*(b-c)/a   //required angular speed in rps
Nmc=Wmc*60/2/%pi     //required angular speed in rpm

Va=Vm/%pi*(1+cos(alpha))
E1=N1/N*E     //value of back emf at the speed of N1
Ia=(Va-E1)/Ra
T=K*Ia

//(ii)When the torque is 20 N-m and firing angle is 60 degrees
T1=20       //required torque in N-m
alpha=60   //required firing angle in degrees
Ec=Nmc/N*E //motor back emf at critical speed of Nmc
Tc=K*(Va-Ec)/Ra    //torque at the critical speed

Ia=T1/K
E1=Va-Ia*Ra
N1=E1/E*N   //required speed 

//Results
//if N1<Nmc then
mprintf("(i)The motor is operating under continuous condition")
mprintf("\nHence the required torque is :%.2f N-m",T)
//end
//if Tc<T1 then
mprintf("\n(ii)The motor is operating under continuous condition")
mprintf("\nHence the required speed is :%.1f rpm",N1)
//end
