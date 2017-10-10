clc
clear
//INPUT DATA
d=0.26;//bore of the engine in m
L=0.38;//stroke of the engine in m
vc=0.0025;//clearence volume in m^3
p1=1;//pressure in bar
t1=313;//temperature in K
p3=25;//pressure in bar
v12=9.07;//volume in m^3

//CALCULATIONS
vs=(3.14*d^2*L)/4;//swept volume in m^3
Rc=((vs+vc)/vc);//compression ratio
no=(1-((1/Rc)^(1.4-1)))*100;//Air standard efficiency of the cycle
p2=p1*(v12^1.4);//pressure in bar
Rp=p3/p2;//compression pressure
pm=(p1*Rc*((Rc^(1.4-1)-1)*(Rp-1)))/((1.4-1)*(Rc-1));//mean effective pressure in bar

//OUTPUT
printf('(a)The air standard efficiency of the cycle is %3.1f percentage \n (b)The mean effective pressure is %3.4f bar',no,pm)

