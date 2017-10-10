//Chapter 6:Induction Motor Drives
//Example 9
clc;
clf();
//Variable Initialization

//Ratings of the star connected squirrel Induction motor
f=50           // frequency in HZ
Vl=400         // line voltage in V
P=4            // number of poles
N=1370         // rated speed

//Frequency variation is from 10 Hz to 50 Hz
fmin=10     
fmax=50

//Parameters referred to the stator
Xr_=3.5        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=3          // resistance of the rotor windings in ohm
Rs=2           // resistance of the stator windings in ohm

//Solution
Ns=120*f/P     //synchronous speed
N1=Ns-N        //increase in speed from no load to full torque rpm
Wms=2*%pi*Ns/60
s=(Ns-N)/Ns    //full load slip

//(i)to obtain the plot between the breakdown torque and the frequency
K=0.1
k=[]
frequency=[]
torque=[]
for i=0:8
K=K+0.1
f1=K*f
x=Rs/K+sqrt((Rs/K)**2+(Xs+Xr_)**2)
Tmax=(3/2/Wms)*(Vl/sqrt(3))**2/x
k($+1)=K
frequency($+1)=f1
torque($+1)=Tmax
end
disp(k,"K:")
disp(frequency,"f:in Hz")
disp(torque,"Tmax:in N-m")

//Plotting the values of Tmax vs f 
plot(frequency,torque)
xgrid(2)
xlabel('f,Hz')
ylabel('Tmax,N-m')
title('Torque  vs frequency characteristic')

//(ii) to obtain the starting torque and current at rated frequency and voltage
x=(Rs+Rr_)**2+(Xs+Xr_)**2
Tst=(3/Wms)*(Vl/sqrt(3))**2*Rr_/x     //starting torque at 50 Hz frequency
Ist=(Vl/sqrt(3))/sqrt(x)         //starting current at 50 Hz frequency

K=fmin/fmax     //minimum is available at 10 Hz
y=((Rs+Rr_)/K)**2+(Xs+Xr_)**2
Tst_=(3/Wms)*(Vl/sqrt(3))**2*Rr_/K/y     //starting torque at 10 Hz frequency
Ist_=(Vl/sqrt(3))/sqrt(y)           //starting current at 10 Hz frequency

ratio1=Tst_/Tst    //ratio of starting torque to the rated starting torque
ratio2=Ist_/Ist    //ratio of starting current to the rated starting current

//Results
mprintf("\n(i)Hence from the plot we can see that for a constant (V/f) ratio breakdown torque decreases with frequency")
mprintf("\n(ii)Hence the required ratio of starting torque to the rated starting torque is :%.3f",ratio1)
mprintf("\nHence the required ratio of starting current to the rated starting current is :%.2f",ratio2)
