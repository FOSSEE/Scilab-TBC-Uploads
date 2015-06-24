clc;
clear;
z1=5;//m
a=0.8;//m
b=6;//m
Cc=0.61;//since a/z1=ratio=0.16<0.2; Cc= contracction coefficient
z2=Cc*a;
//Q/b=flowrate
flowrate=z2*((2*9.81*(z1-z2))/(1-((z2/z1)^2)))^0.5;
//considering z1>>z2 and neglecting kinetic energy of the upstream fluid
flowrate1=z2*(2*9.81*z1)^0.5;
disp("m^2/s",flowrate,"The flowrate per unit width=")
disp("m^2/s",flowrate1,"The flowrate per unit width when we consider z1>>z2=")
count=1;
j=5:15;
for i=5:15
    fr(count)=z2*((2*9.81*(i-z2))/(1-((z2/i)^2)))^0.5;
    count=count+1;
end
plot2d(j,fr,rect=[0,0,15,9])
xtitle("Q/b vs z1","z1,m","Q/b, m^2/s")