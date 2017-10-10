//Example 20_4
clc();
clear;
//To find current in circuit, Voltmeter reading, reading across capacitor and power loss
f=2000           //Units in Hz
c=0.6*10^-6         //Units in F
xc=1/(2*%pi*f*c)         //Units in Ohms
r=300        //Units in Ohms
z=sqrt(r^2+xc^2)      //Units in Ohms
v=80        //Units in V
i=v/z          //Units in A
vr=i*r    //Units in V
vc=i*xc        //Units in V
p=i^2*r         //Units in W
printf("The current in circuit is I=%.4f A\nVolt meter readings across resistor Vr=%.1f V\nReadings across capacitor is Vc=%.1f V\nPower loss in circuit is=%.1f W",i,vr,vc,p)
