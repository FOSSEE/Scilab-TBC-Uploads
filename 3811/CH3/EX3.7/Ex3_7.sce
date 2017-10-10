//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.7
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vs=110;//source voltage in volts
L=20e-3;//inductance of the circuit in henry
R=10;//resistance of the circuit in ohm
a=60;//trigerring angle in degree 
r1=a*(%pi/180);
Vm=Vs*2^(1/2);
T=L/R;//Time constant of the circuit in sec
w=2*%pi*a;//rotational speed in rad/sec
mprintf("\n To find Conduction period:")
b=(%pi-(w*T*log(0.05)))*(180/%pi);
gama=b-a;//conduction period in degree
mprintf("\nThe conduction period is %d dgree",gama)
mprintf("\nTo find maximum diode current:")
Z=sqrt(R^2+(w*L)^2);
wtau=(w*L)/R;
Q=atand(wtau);
l=exp((-1)*((%pi-(a*(%pi/180)))/wtau));
c=(%pi-(a*(%pi/180)));
id=(Vm/Z)*(sind(Q)+((sind(Q-a))*l));
mprintf("\nThe maximum diode current is %f ampere",id)
mprintf("\nTo calculate average current of the diode:")
Idave=(id/(2*%pi))*(-wtau)*(exp((-1)*(b*(%pi/180)-%pi))-1);
mprintf("\nThe average current of the diode is %f ampere",Idave)
mprintf("\nTo calculate average load current:")
Vave=(Vm/(2*%pi))*(1+(cosd(a)));
Iave=Vave/R;
mprintf("\nThe average load current is %f ampere",Iave)
mprintf("\nTo calculate average current of the SCR:")
ISCR=Iave-Idave;
mprintf("\nThe average current of the SCR is %f ampere",ISCR)
