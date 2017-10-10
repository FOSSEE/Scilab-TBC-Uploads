clc
clear
//INPUT DATA
n=1.3;//index of compression
p1=1;//pressure in bar
va=2;//volume of air in m^3
N=2;//No.of stages
p3=50;//delivery pressure in bar
R=0.287;//gas constant
t1=303;//temperature in K
t31=314;//temperature in K
vcs=0.05;//ratio of clearance volume to stroke volume

//CALCULATIONS
ip1=(n/(n-1))*p1*10^2*(va/60)*N*(((p3/p1)^((n-1)/(n*N)))-1);//IP for perfect cooling in kW
m=(p1**10^2*va/(R*t1));//mass flow rate in kg/min
ip2=(n/(n-1))*(m/60)*R*(t1/3)*(2*sqrt(t1*t31)*(((p3/p1)^((n-1)/(n*N))))-(t1+t31));//IP for imperfect intercooling
p2=sqrt(p1*p3);//pressure in bar
nv1=1-vcs*(((p2/p1)^(1/n))-1);//volumetric efficiency in percentage
vs1=va/nv1;//stroke volume in m^3/min
d1=(vs1*4/(3.14*N*100))^(1/3);//Dimensions of the cylinder
d2=d1*(p1/p2);//Dimensions of the cylinder
v13=(p2/p1);//volume ratio
v1=1.05*vs1;//volume in m^3
v2=v1/((p2/p1)^(1/n));//volume in m
t2=(p2/((p2/p1)^(1/n)))*t1;//temperature in K
v31=v2*t31/t2;//volume in m
v131=v1/v31;//volume ratio

//OUTPUT
printf('(a)IP for Perfect cooling %3.3f kW \n (b) IP for Imperfect intercooling is %3.2f kW \n (a1)perfect intercooling \n cylinder volume ratio is %3.2f \n (b1)Imperfect intercooling \n cylinder volume ratio is %3.3f \n ',ip1,ip2,v13,v131)

