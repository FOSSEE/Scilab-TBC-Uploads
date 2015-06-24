//CHAPTER 10 ILLUSRTATION 7 PAGE NO 273
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
P1=30;//Power in kW
N=1250;//Speed in r.p.m
P=60;//Applied force in N
d=0.8;//Drum diameter in m
q=310;//Contact angle in degree
a=0.03;//Length of a in m
b=0.12;//Length of b in m
U=0.2;//Coefficient of friction
B=10;//Band width in cm
D=80;//Diameter in cm

T=(P1*60000)/(2*3.14*N);//Torque in N.m
Td=(T/(d/2));//Tension difference in N
Tr=exp(U*(q*(3.14/180)));//Tensions ratio
T2=(Td/(Tr-1));//Tension in N
T1=(Tr*T2);//Tension in N
x=((T2*b)-(T1*a))/P;//Distance in m;
X=(P1/(B*D));//Ratio

printf('Value of x is %3.4f m \n Value of (Power/bD) ratio is %3.4f',x,X)
