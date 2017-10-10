//Chapter 6:Induction Motor Drives
//Example 10
clc;
clf();
//Variable Initialization
//ratings of the star connected squirrel Induction motor is same as that of Ex-6.9
f=50           // frequency in HZ
Vl=400         // line voltage in V
P=4            // number of poles
N=1370         // rated speed

//the frequency variation is from 5 Hz to 50 Hz
fmin=5     
fmax=50
//parameters referred to the stator
Xr_=3.5        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=3          // resistance of the rotor windings in ohm
Rs=2           // resistance of the stator windings in ohm

//calculation
Ns=120*f/P     //synchronous speed
N1=Ns-N        //increase in speed from no load to full torque rpm
Wms=2*%pi*Ns/60
s=(Ns-N)/Ns    //full load slip
Tmax=54.88   //maximum torque as obtain from Ex-6.9

//to obtain the plot between the voltage and the frequency
K=0
k=[]
frequency=[]
line_voltage=[]
for i=0:9
K=K+0.1
f1=K*f
x=2*K*Wms*Tmax/3
y=Rs+sqrt((Rs)**2+(K*(Xs+Xr_))**2)
Vl_square=3*x*y
Vl=sqrt(Vl_square)
k($+1)=K
frequency($+1)=f1
line_voltage($+1)=Vl
end
disp(k,"K:")
disp(frequency,"f:in Hz")
disp(line_voltage,"Vl:in V")

//Plotting the values of line voltage Vl vs f 
plot(frequency,line_voltage,'b')
xlabel('f,Hz')
ylabel('Line voltage,volts')
xgrid(2)
title('Line voltage  vs Frequency characteristic')
//for constant V/f ratio
x=[0,10,20,30,40,50]
y=[0,80,160,240,320,400]
plot(x,y,'--')
str=["$\underleftarrow{\huge{Constant V/f  ratio}}$"]
xstring(21,160,str)

mprintf("\nHence for a constant breakdown torque at all frequencies,")
mprintf("\nV/f ratio has to be progressively increased with increase in frequency")
