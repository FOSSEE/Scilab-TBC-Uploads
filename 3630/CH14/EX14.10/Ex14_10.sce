clc;
R1=18000;
R2=4700;
Hie=600;
Req=(R1*R2)/(R1+R2);
Rth=(Req*Hie)/(Req+Hie);
hfc=201;
re=22;
Rout=re+(Rth/hfc);
Ce=0.00001;
f1E=1/(2*3.14*Rout*Ce);
disp('Hz',f1E,"f1E=")//The answers vary due to round off error
