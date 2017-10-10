//Chapter 5:Dc Motor Drives
//Example 14
clc;

//Variable Initialization

//Ratings of the separately excited motor is same as that of Ex-5.13
V=200    // rated voltage in v
N=875    // rated speed in rpm
Ia=150   // rated current in A
Ra=0.06  // armature resistance in ohms
Vs=220   // source voltage in v
f=50     //frequency of the source voltage in hz
La=0.85e-3   // armature curcuit inductance in H

//Solution
E=V-Ia*Ra            //back emf
Vm=sqrt(2)*Vs   //peak voltage
Wm=2*%pi*N/60    //synchronous angular speed

//(i)When the speed is 400 rpm and firing angle is 60 degrees
N1=400         //given speed in rpm
alpha=60       //firing angle in degrees
W=2*%pi*f  
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

E1=N1/N*E

//The equation Vm/Z*sin(beta-phi)-E/Ra+(E/Ra-Vm/Z*sin(alpha-phi))*exp(-(beta-alpha)*cot_phi)=0
//can be solved using trial method such that beta=230 degrees
beta=230                   //in degrees
beta=beta*%pi/180//in radians

Va=(Vm*(cos(alpha)-cos(beta))+(%pi+alpha-beta)*E1)/%pi
Ia=(Va-E1)/Ra
T1=K*Ia

//(ii)When the speed is -400 rpm and firing angle is 120 degrees
Le=2e-3        //external inductance added to the armature
L=La+Le
N2=-400         //given speed in rpm
alpha=120       //firing angle in degrees
x=W*L/Ra
phi=atan(x)
cot_phi=1/tan(phi)
Z=sqrt(Ra**2+(W*L)**2)
K=E/Wm

y=Ra*Vm/Z/K
alpha=alpha*%pi/180
a=(1+exp(-(%pi*cot_phi)))/(exp(-(%pi*cot_phi))-1)
Wmc=y*sin(alpha-phi)*a   //required angular speed in rps
Nmc1=Wmc*60/2/%pi     //required angular speed in rpm
//The motor is operating under discontinous condition"
E2=N2/N*E    

//The equation Vm/Z*sin(beta-phi)-E/Ra+(E/Ra-Vm/Z*sin(alpha-phi))*exp(-(beta-alpha)*cot_phi)=0
//can be solved using trial method such that beta=281 degrees
beta=281                   //in degrees
beta=beta*%pi/180//in radians

Va=(Vm*(cos(alpha)-cos(beta))+(%pi+alpha-beta)*E2)/%pi
Ia=(Va-E2)/Ra
T2=K*Ia

//(iii)When the speed is -600 rpm and firing angle is 120 degrees
N3=-600        //speed in rpm
alpha=120      //firing angle in degrees
alpha=alpha*%pi/180
Va=2*Vm/%pi*cos(alpha)
E3=N3/N*E    //since Va=E1+Ia*Ra
Ia=(Va-E3)/Ra
T3=K*Ia

//Results
mprintf("(i)Hence the required torque is :%.2f N-m",T1)
mprintf("\n(ii)Hence the required torque is :%.1f N-m",T2)
mprintf("\n(iii)Hence the required torque is :%.1f N-m",T3)
//There is a minor difference in the answers because of accuracy
