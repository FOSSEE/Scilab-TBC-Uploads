//CHAPTER 10 ILLUSRTATION 10 PAGE NO 275
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
n=12;// Number of blocks
q=16;//Angle subtended in degrees
d=0.9;//Effective diameter in m
m=2000;//Mass in kg
k=0.5;//Radius of gyration in m
b1=0.7;//Distance in m
b2=0.03;//Distance in m
a=0.1;//Distance in m
P=180;//Force in N
N=360;//Speed in r.p.m
U=0.25;//Coefficient of friction

Tr=((1+(U*tand(q/2)))/(1-(U*tand(q/2))))^n;//Tensions ratio
T2=(P*b1)/(a-(b2*Tr));//Tension in N
T1=(Tr*T2);//Tension in N
TB=(T1-T2)*(d/2);//Torque in N.m
aa=(TB/(m*k^2));//Angular acceleration in rad/s^2
t=((2*3.14*N)/60)/aa;//Time in seconds

printf('(i) Maximum braking torque is %3.4f Nm \n(ii) Angular retardation of the drum is %3.4f rad/s^2 \n(iii) Time taken by the system to come to rest is %3.1f s',TB,aa,t)
