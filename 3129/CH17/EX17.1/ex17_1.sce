//Finding the Transistor voltage and current with clamping
//Example 17.1(Page No-766) 
clc
clear
//given data 
Vcc=100;//in volts
Rc=1.5;//in ohms
Vd1=2.1;//in volts
Vd2=0.9;//in volts
Vbe=0.7;// in volts
Vb=15;//in volts
Rb=2.5;//in ohms
B=16;

//part(a)
I1=(Vb-Vd1-Vbe)/Rb;
Ic=B*I1;
printf('(a)Collecter current without clamping:%2.2f A\n',Ic)

//part(b)
Vce=Vbe+Vd1-Vd2;
printf(' (b)Clamping voltage:%.1f V\n',Vce)

//part(c)
IL=(Vcc-Vce)/Rc;
Ic=B*(I1+IL)/(B+1);
printf(' (c)Collector current with clampingIc:%2.2f A\n',Ic)
