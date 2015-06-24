clc;
g=9.8;      //g in m/sec square
h=2;        //height in m
F=100;     //force in Newton
s=15;      //s in m
v=2;       //velocity in m/sec
m=30;      //mass in 30 kg
W=F*s;     //calculating work in Joule
delKE=(1/2)*(m*v*v);  //calculating change in KE in Joule
delPE=m*g*h;          //calculating change in PE in Joule
Wf=W-delKE-delPE;     //calculating work in Joule
Ff=Wf/s;              //calculating frictional force in Newton
disp(Ff,"Frictional Force in Newton = ");  //displaying result