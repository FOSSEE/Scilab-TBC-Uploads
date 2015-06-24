

//exapple 5.11 
clc; funcprot(0);
// Initialization of Variable
g=9.81;
q=1.49;
pi=3.14;
//calculation
//part1
Dc=(q^2/g)^.333;
disp(Dc,"critical depth in (m):");
//part2
n=0.021;
su=1.85*pi/180;//slope upstream
sd=0.035*pi/180;//slope downstream
Dnu=(n*q/sqrt(su))^(3/5);
Dnu=round(Dnu*1000)/1000;
disp(Dnu,"normal depth upstream in (m):");
Dnd=(n*q/sqrt(sd))^(3/5);
disp(Dnd,"normal depth downstream in (m):");
//part3
D2u=-0.5*Dnu*(1-sqrt(1+8*q^2/g/Dnu^3));
D2u=round(D2u*1000)/1000;
disp(D2u,"conjugate depth for upstream in (m):");
D1d=-0.5*Dnd*(1-sqrt(1+8*q^2/g/Dnd^3));
disp(D1d,"conjugate depth for downstream in (m):");
//part4
//accurate method
delD=.022;
D=0.987:.022:1.141
dis=0;
for i=1:8
    delL=delD/su*(1-(Dc/D(i))^3)/(1-(Dnu/D(i))^3.33);
    dis=dis+delL
end
disp(dis,"distance in (m) of occurence of jump by accurate method:");
//not so accurate one
E1=D2u+q^2/2/g/D2u^2;
E2=Dnd+q^2/2/g/Dnd^2;
E2=round(E2*1000)/1000;
E1=round(E1*1000)/1000;
ahm=(D2u+Dnd)/2;//av. hydraulic mean
afv=.5*(q/D2u+q/Dnd);//av. fluid velocity
i=(afv*0.021/ahm^(2/3))^2;
l=(E2-E1)/(su-i+0.0002);
disp(l,"distance in (m) of occurence of jump by not so accurate method:")
//part5
rho=998;
Eu=Dnu++q^2/2/g/Dnu^2;
Eu=round(Eu*1000)/1000;
P=rho*g*q*(Eu-E1);
disp(P/1000,"power loss in hydraulic jump per unit width in (kW):")
