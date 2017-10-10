//Example 20_5
clc();
clear;
//To find the current in circuit and voltmeters reading across R C and L
f=600         //Units in Hz
l=4*10^-3         //Units in H
xl=2*%pi*f*l        //Units in Ohms
c=10*10^-6         //Units in F
xc=1/(2*%pi*f*c)       //Units in Ohms
r=20       //Units in Ohms
z=sqrt(r^2+(xl-xc)^2)      //Units in Ohms
v=50         //Units in V
i=v/z        //Units in A
vr=i*r    //Units in V
vl=i*xl      //Units in V
vc=i*xc    //Units in V
printf("The current in circuit is I=%.2f A\nVolt meter reading across R Vr=%.1f V\nVolt meter reading across L Vl=%.1f V\nVolt meter reading across c Vc=%.1f V\n",i,vr,vl,vc)
