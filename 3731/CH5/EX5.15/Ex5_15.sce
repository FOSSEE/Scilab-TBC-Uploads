//Chapter 5:Dc Motor Drives
//Example 15
clc;

//Variable Initialization

V=200    // rated voltage in v
N=875    // rated speed in rpm
Ia=150   // rated current in A
Ra=0.06  // armature resistance in ohms
Vs=220   // source voltage in v
f=50     //frequency of the source voltage in hz
La=2.85e-3   // armature curcuit inductance in H

//Solution
E=V-Ia*Ra            //back emf
Vm=sqrt(2)*Vs   //peak voltage
Wm=2*%pi*N/60    //angular speed
W=2*%pi*f

alpha=120       //firing angle in degrees
x=W*La/Ra
phi=atan(x)
cot_phi=1/tan(phi)
Z=sqrt(Ra**2+(W*La)**2)
K=E/Wm

y=Ra*Vm/Z/K
a=(1+exp(-(%pi*cot_phi)))/(exp(-(%pi*cot_phi))-1)
alpha=alpha*%pi/180
Wmc=y*sin(alpha-phi)*a   //required angular speed in rps
Nmc=Wmc*60/2/%pi     //required angular speed in rpm

Va=2*Vm/%pi*cos(alpha)
E1=Nmc/N*E     //value of back emf at the critical speed of Nmc     
Ia=(Va-E1)/Ra
Tc=K*Ia

//(i)When the torque is 1200 N-m and firing angle is 120 degrees
T2=1200         //given torque in N-m
Ia2=T2/K        //given terminal current for the given torque and the answer in the book is wrong
E2=Va-Ia*Ra   
N2=E2/E*N

//(ii)When the torque is 300 N-m and firing angle is 120 degrees
T=300    //required torque in N-m
beta=233.492   //required angle in degrees
beta=beta*%pi/180    //in radians
x=beta-alpha
E1=(Vm*(cos(alpha)-cos(beta)))/x-(%pi*Ra*T)/(K*x)
N1=E1/E*N   //required speed 


//Results
mprintf("\nThe motor is operating under continuous condition")
mprintf("\nThe torque Tc is :%.2f N-m",Tc)
//The answer for torque Tc in the book is wrong due to accuracy which leads to other incorrect answers
mprintf("\n(i)Hence the required speed is :%.1f rpm",N2)
mprintf("\n(ii)The equation Vm/Z*sin(beta-phi)-sin(alpha-phi))*exp(-(beta-alpha)*cot_phi)=")
mprintf("\n(Vm*(cos(alpha)-cos(beta))/Ra/(beta-alpha)-pi*T/K/(beta-alpha) )*(1-exp(-(beta-alpha)*cot_phi)")
mprintf("\ncan be solved using trial method such that beta=233.492 degrees")
mprintf("\n  Hence the required speed is :%.1f rpm",N1)
