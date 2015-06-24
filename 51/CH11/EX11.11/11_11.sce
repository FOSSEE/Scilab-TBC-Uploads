clc;
clear;
k=1.4;   
T0=518.67;//degree R
T1=514.55;//degree R
p1=14.3;//psia
R=53.3;//(ft*lb)/(lbm* degree R)
cp=R*k/(k-1);//(ft*lb/(lbm* degree R))
Tratio=T1/T0;
Ma=(((1/Tratio)-1)/((k-1)/2))^0.5;
x=(R*T1*k*32.2)^0.5;//ft/sec; where x=(R*T1*k)^0.5
y=p1*144/(R*T1)*(Ma*x);//lbm/((ft^2)*sec); where y=d*V
//for p=7 psia 
p=7;//psia
fn=poly([(-T0) 1 ((y*y/(2*cp*p*p*144*144/(R^2)))/32.2)],"T","c");
r=roots(fn);
T=r(1);//K
sdif=(cp*log(T/T1))-(R*log(p/p1));//(ft*lb)/(lbm* degree R)
disp("K",T,"The corrosponding value of temperature for Fanno for downstream pressure of 7psia=")
disp("(ft*lb)/(lbm* degree R)",sdif,"The corrosponding value of entropy change for Fanno for downstream pressure of 7psia=")
count=1;
for i=1.4:0.1:7
    root=roots(poly([(-T0) 1 ((y*y/(2*cp*i*i*144*144/(R^2)))/32.2)],"T","c"));
    temp(count)=root(1);
    s(count)=(cp*log(temp(count)/T1))-(R*log(i/p1));
    count=count+1;
end
plot2d(s,temp)
xtitle("T vs s-s1","s-s1, ((ft*lb)/(lbm* degree R))","T, Degree R")