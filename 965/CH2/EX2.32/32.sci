clc;
clear all;
disp("thickness of layer")
La=0.25;//m
//kA=0.28*(1+0.000833*t);//W/(m*C)
//kB=0.113*(1+0.000206*t);//W/(m*C)
hhf=30;//W/(m^2*C)
hcf=10;//W/(m^2*C)
thf=1300;// degree C
tcf=30;// degree C
q=750;// W/m^2 loss of heat to the surroundings

//q=(thf-t1)/(1/hhf)=(t3-tcf)/(1/hcf)=(t1-t2)/(La/kmA)=(t2-t3)/(Lb/kmB)
//kmA=0.28*(1+0.000833*(t1+t2)/2);//W/(m*C)
//kmB=0.113*(1+0.000206*(t2+t3)/2);//W/(m*C)

t1=thf-q*(1/hhf);// degree C
disp("degree C",t1,"t1=")

t3=tcf+q*(1/hcf);// degree C
disp("degree C",t3,"t3=")

//(t3-tcf)*hcf=kmA*(t1-t2)/La
//(t3-tcf)*hcf=0.28*(1+0.000833*(t1+t2)/2)*(t1-t2)/La
//-0.0004165*(t2^2)+t2-1282.5=0
X=4*0.0004165*1282.5;
Y=(1+X)^0.5;
Z=(-1+Y)/(2*0.0004165);
t2=Z;
//t2=(-1+(1+4*0.0004165*1282.5)*0.5)/(2*0.0004165);
disp("degree C",Z,"t2 =")

t=(t1+t2)/2
kmA=0.28*(1+0.000833*(t1+t2)/2);//W/(m*C)
disp("W/(m*C)",kmA,"kmA =")
kmB=0.113*(1+(0.000206/2)*(t2+t3));//W/(m*C)
disp("W/(m*C)",kmB,"kmB =")

//kmA*(t1-t2)/La=kmB*(t2-t3)/Lb
Lb=(kmB/kmA)*La*(t2-t3)/(t1-t2);
disp("mm",Lb*1000,"Lb = ")
