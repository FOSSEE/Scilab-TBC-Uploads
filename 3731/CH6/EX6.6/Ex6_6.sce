
//Chapter 6:Induction Motor Drives
//Example 6
clc;

//Variable Initialization

//Ratings of the star connected Induction motor which operates under dynamic braking
f=50           // frequency in HZ
P=6            // number of poles

//Parameters referred to the stator
Xr_=3.01       // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=4.575      // resistance of the rotor windings in ohm
Rs=1.9         // resistance of the stator windings in ohm
J=0.1          // moment of inertia of the motor load system in kg-m2
Id=12          // given DC current

N=1500         //given asynchronous speed
//magnetization chacrateristic at the given asynchronous speed
Im=[0.13,0.37,0.6,0.9,1.2,1.7,2.24,2.9,3.9,4.9,6,8,9,9.5]       //magnetization current
E=[12.8,32,53.8,80,106,142,173,200,227,246,260,280,288,292]     //back emf

//Solution
Ns=120*f/P      //synchronous speed in rpm
torque=[]
speed=[]
temp=[]
Is=sqrt(2/3)*Id   //value of stator current for two lead connection
Wms=2*%pi*N/60
for i=2:14
x=(Is**2-Im(i)**2)/(1+2*Xr_*Im(i)/E(i))   //x=Ir_**2
Ir_=sqrt(x)       //required rotor current
y=(E(i)/Ir_)**2-Xr_**2
S=Rr_/sqrt(y)        //required slip
N=S*Ns                    //required speed
T=(3/Wms)*(Ir_)**2*Rr_/S  //required torque
speed($+1)=N
torque($+1)=T
temp($+1)=T
end
mprintf("Hence the magnetization curve is")
disp(speed,"Speed:in rpm")
for i=1:13
torque(i)=-1*torque(i)
end
disp(torque,"Braking torque :in N-m")

//Results

//Plot of of torque vs speed
subplot(2,1,1)
plot(torque,speed)
xlabel('Torque, N-m') 
ylabel('Speed, rpm')
title('Torque vs Speed')
xgrid(2)

//Plot of Wm vs J/T
inertia_over_torque=[]
for i=3:13
J_T=1000*J/temp(i)
inertia_over_torque($+1)=J_T
end
disp(inertia_over_torque,"J/t :") 

Wm=[1,4,8,12,16,20,25,55,95,125,160]  
//the values of Wm are taken for the angular frequency with maximum value of Wms=50*pi rad/s
subplot(2,1,2)
plot(Wm,inertia_over_torque)
xlabel('$Angular speed \omega_m$') 
ylabel(' J/T,1*10e-2')
title('$J/T   vs   \omega_m$')
xgrid(2)
x=[6.5,6.5]
y=[2,4.5]
plot(x,y,'blue')
str=["${A}$"]
str1=["${B}$"]
str2=["${C}$"]
str3=["${D}$"]
str4=["${E}$"]
xstring(6,2,str)
xstring(6,4.5,str1)
xstring(80,3.4,str2)
xstring(156,8.3,str3)
xstring(156,2,str4)

mprintf("Hence from the plot the area ABCDEA between the curve and the speed axis for speed change ")
mprintf("for synchronous to 0.02 times synchrnous speed is the stopping time which is equal to: 9.36 sec")
