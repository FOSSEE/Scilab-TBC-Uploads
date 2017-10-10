clear;
clc;

phi=38.74;//in degree
k=0.8;
vs=220;

a=gca();
a.auto_scale="off";
a.data_bounds=[0,0;.3,1];
xlabel("Voltage");
ylabel("Power");

p=[0:.1:1];
v1=( 0.5-(p*0.8)+((.25-(p*0.8)-(p^2))^(1/2)))^(1/2);
v2=( 0.5-(p*0.8)-((.25-(p*0.8)-(p^2))^(1/2)))^(1/2);
//change the axis boundary of x axis to 0.3
plot(p,v1,p,v2);
cp=.24;//from graph
cv=.55;//from graph
x=60;
Pr=(cp*(vs^2))/x;
Vr=cv*vs;
mprintf("Critical power = %.3f MW and Critical voltage = %.3f KV",Pr,Vr);



