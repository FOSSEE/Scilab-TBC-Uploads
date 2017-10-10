clc
// Variable Initialization 
Vm=230 //Supply Voltage in Volts
R=0.25//Combined Field and Armature circuit resistance in Ohm
N=1000 //Motor speed in Rpm
Kaf=0.03 //Constant in N-m/A^2
Krcs=0.075 //Constant in V-S/Rad
a=30 //firing angle in Degree

//Solution
//For a full converter controlled dc motor drive
W=(2*%pi*N)/60 //Angular speed in Rad/sec
Ia=((((2*Vm*1.414)/%pi)*cosd(a))-(Krcs*W))/(R+(Kaf*W)) //Armature current in Amp
T=Kaf*(Ia^2) //Torque in N-m
Va=(2*Vm*1.414)*cosd(a)*(1/%pi)//Average voltage in volts
Po=Va*Ia //Output power in Watt
Irms=Ia*sqrt((180-a)/180) //Rms Current in Amp
Pi=Vm*Irms
pf=Po/Pi //Power factor

//Results
printf('\n\n The motor Current =%0.1f Amp \n\n',Ia)
printf('\n\n The motor Torque=%0.1f N-m \n\n',T)
printf('\n\n The Supply Power Factor=%0.1f Lag\n\n',pf)
//The answers vary due to round off error

