clc
p1=1*10^5; //Pa
T1=293; //K
d=6; //m; diameter of the spherical balloon
p2=0.94*p1;
T2=T1;
cv=10400; //J/kg K
R=8314/2;
r=3; //m

disp("(i) Mass of original gas escaped")

//dm=m1-m2
//dm=(p1-p2)*V1/R/T1
//m1=p1*V1/R/T1

%mass_escaped=(p1-p2)/p1*100;
disp("%mass_escaped =")
disp(%mass_escaped)
disp("%")

disp("(ii)Amount of heat to be removed ")
T2=0.94*T1;
m=p1*4/3*%pi*r^3/R/T1;

Q=m*cv*(T1-T2)/10^6;
disp("Q =")
disp(Q)
disp("MJ")