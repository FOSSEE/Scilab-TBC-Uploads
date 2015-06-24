clc;
clear;
k=1.4;   
T0=518.67;//degree R
T1=514.55;//degree R
p1=14.3;//psia

R=53.3;//(ft*lb)/(lbm*degree R)
cp=R*k/(k-1);//(ft*lb/(lbm* degree R))
Tratio=T1/T0;
Ma=(((1/Tratio)-1)/((k-1)/2))^0.5;
x=(R*T1*k*32.2)^0.5;//ft/sec; where x=(R*T1*k)^0.5
y=p1*144/(R*T1)*(Ma*x);//lbm/((ft^2)*sec); where y=d*V
z=R*T1/(p1*144);//(ft^3)/lbm
c=(p1)+(y*y*z/(32.2*144));//psia; =constant
//when downstream pressure p=13.5 psia
p=13.5;//psia 
a=(y^2)*R/(p*144*32.2*144);//(lb/(in^2))/degree R
fn=poly([(p-c) a],"T","c");
T=roots(fn);//degree R
sdif=(cp*log(T/T1))-(R*log(p/p1));//ft*lb/(lbm*degree R)
disp("degree R",T,"The corrosponding value of temperature for the downstream pressure of 13.5 psia=")
disp("ft*lb/(lbm*degree R)",sdif,"The corrosponding value of change in entropy for the downstream pressure of 13.5 psia=")
count=1;
for i=1:0.1:13.5
    temp(count)=roots(poly([(i-c) ((y^2)*R/(i*144*32.2*144))],"T","c"));
    s(count)=(cp*log(temp(count)/T1))-(R*log(i/p1));
    count=count+1;
end
plot2d(s,temp,rect=[100,500,400,3000])
xtitle("T vs s-s1","s-s1, ((ft*lb)/(lbm* degree R))","T, Degree R")