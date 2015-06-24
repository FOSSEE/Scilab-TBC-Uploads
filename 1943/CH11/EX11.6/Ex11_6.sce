
clc
clear
//Input data
N=16000//Speed in rpm
T1=17+273//Temperature in K
rp=4//Pressure ratio
in=82//Isentropic efficiency in percent
s=0.85//Slip factor
a=20//Angle in degrees
d=200//Diameter in mm
V=120//Velocity in m/s
cp=1.005//Specific heat in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
T2sT1=(rp)^((g-1)/g)//Temperature ratio
T2s=T1*T2sT1//Temeprature in K
dTs=(T2s-T1)//Temperature difference in K
dT=dTs/(in/100)//Temperature difference in K
Wc=(cp*dT)//Power input in kJ/kg
Vb1=(3.14*(d/1000)*N)/60//Velocity in m/s
Vw1=(V*sind(a))//Pre-whirl velocity in m/s
Vb2=sqrt(((Wc*1000)+(Vb1*Vw1))/s)//Velocity in m/s
d2=((Vb2*60)/(3.14*N))*1000//Tip diameter in mm

//Output
printf('Impeller tip diameter is %3.0f mm',d2)
