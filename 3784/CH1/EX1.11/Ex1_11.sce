clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=0.5//Armature circuit resistance in Ohm
Irms=25 //Armature current in Amp
Nr=800 //Motor speed in Rpm
Kaf=0.172 //Motor Voltage Constant in V/rpm
a=60//firing angle in Degree

//Solution
//CASE:A
//For motoring action
Ka=(Kaf*60)/(2*%pi)//Constant in V-s/rad
T=Ka*Irms //Torque of motor in N-m
Va=(2*Vm*1.414)*cosd(a)*(1/%pi)//Average voltage in Volts
Eb=Va-(Irms*Ra)//Back Emf in Volts
N=Eb/Kaf//Speed of motor in Rpm
//The supply current is square wave if motor current is constant and ripple-free with Amplitude 25A
P=Vm*Irms //Supply VA in Watt
//Power from supply is real power if losses in converter are neglected
Ps=Va*Irms //Power in Watt
pf=Ps/P //Power factor lag

//CASE:B
//For polarity reversal (regeneration action)
Eb1=-Eb //Back emf in Volts
Va1=Eb1+(Irms*Ra)
af=acosd((Va1*%pi)/(2*Vm*1.414))//Firing angle in Degree
//Power fed from DC Machine
Pdc=Eb*Irms //Power in watt
//Power  lost in armature resistance
PL=((Irms)^2)*Ra //Power in Watt
//Power fed back to ac supply is
PF=Pdc-PL //Power in watt

//Results
printf('\n\n The motor Torque=%0.1f N-m \n\n',T)
printf('\n\n The motor Speed  =%0.1f RPM \n\n',N)
printf('\n\n The Supply Power Factor=%0.1f Lag\n\n',pf)
printf('\n\n The Firing Angle=%0.1f Degree\n\n',af)
printf('\n\n The Power fed back to Supply=%0.1f Watt\n\n',PF)
//The answers vary due to round off error
