

//example 10.6
clc; funcprot(0);
//exapple 10.6
clf() 
// Initialization of Variable
rho=998;
rho1=2398;//density of ore
mu=1.01/1000;
g=9.81;
h=25/100;
t=[114 150 185 276 338 396 456 582 714 960];
m=[0.1429 0.2010 0.2500 0.3564 0.4208 0.4781 0.5354 0.6139 0.6563 0.7277];
for i=1:10
ms=0.0573+m(10);//total mass setteled
d(i)=sqrt(18*mu*h/g/(rho1-rho)/t(i));
P(i)=m(i)/ms*100;//mass percent of sample
end
plot(t,P);
xtitle("","Settling time (s)","mass percent in (%)");
disp(P,d,"& its percentage mass distribution respectively" ,"the particle size distribution in (m)" );
for i=2:9 
        del(i)=(P(i+1)-P(i-1))/(t(i+1)-t(i-1));//slope 
        W(i)=P(i)-t(i)*del(i);
        W(1)=P(1)-P(1);
           
end
W(10)=P(10)-t(10)*0.025;
disp("mass% and diameter(m)respectively with serial no:")
for i=4:10
    disp(i-4);
    disp("mass% is")
    disp( "for diameter in(m) of",W(i));
    disp(d(i));
   
end

