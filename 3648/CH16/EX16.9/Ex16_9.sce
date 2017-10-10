//Example 16_9
clc();
clear;
//To compute the absolute potential at B
k=9*10^9       //Units in N meter^2/C^2
q=5*10^-8 //Units in C
r=0.1       //Units in meters
v1=(k*q)/r   //Units in V
q=8*10^-8 //Units in C
r=0.1       //Units in meters
v2=(k*q)/r   //Units in V
q=40*10^-8 //Units in C
r=0.2       //Units in meters
v3=-(k*q)/r   //Units in V
vb=v1+v2+v3          //Units in V        
printf("Due to 5*10^-8 C V1=%d V\nDue to 8*10^-8 C V2=%d V\nDue to 40*10^-8 C V3=%d V\n Absolute potential at B is Vb=%d V",v1,v2,v3,vb)
      
