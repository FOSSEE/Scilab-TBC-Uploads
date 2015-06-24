//Exa 2.34
clc;
clear;
close;
format('v',7);

//Given Data : 
p=6;//bar
m=18;//Kg
v=260;//m/s
rho=4;//Kg/m^3
Q=42;//KJ/Kg
W=261;//KW
Cv=0.715;//KJ/KgK
pA=1;//bar
vA=60;//m/s
mdotA=14;//Kg/s
CvA=0.835;//m^3/Kg
TA=115+273;//K
pB=5.5;//bar
vB=15;//m/s
mdotB=4;//Kg/s
CvB=0.46;//m^3/Kg
TB=600+273;//K
v1=1/rho;//m^3/Kg
//m*(Cv*T+p*10^5*v1/1000+v^2/2000)+Q*rho-W=mdotA*(Cv*TA+pA*10^5*CvA/1000+vA^2/2000)+m_dotB*(Cv*TB+pB*10^5*CvB/1000+vB^2/2000);
T=(((mdotA*(Cv*TA+pA*10^5*CvA/1000+vA^2/2000)+mdotB*(Cv*TB+pB*10^5*CvB/1000+vB^2/2000))+W-Q*rho)/m-v^2/2000-p*10^5*v1/1000)/Cv;//K
disp(T,"Temperature of air at inlet in K : ");
//Answer in the book is wrong.
