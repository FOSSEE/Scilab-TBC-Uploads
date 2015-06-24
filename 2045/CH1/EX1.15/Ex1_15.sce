//pagenumber 34 example 15
clear
nd=4*10^14;//atoms per cubic centimetre
na=5*10^14;//atoms per cubic centimetre
//(1) concentration
ni=2.5*10^13;
np=ni^2;
//p1=n+10^14
z=1;
z1=10^14;
u=-ni^2;
n=poly([z z1 u],'q');
roots(n);//n taken as 
n=1.05*10^4;
disp("concentration of the a free electrons   =   "+string((n)));
p1=n+10^14;
disp("concentration of the a free holes   =   "+string((p1)));
//(2)
disp("sample p");
a=ni^2/(300^3*exp(-(0.785/0.026)));
w=400;//kelvin
ni=sqrt(a*w^3*exp(-0.786/(8.62*10^-5*w)));
ni=((n)*(n+10^14))/10^3;
n=ni-0.05*10^15;
disp("n   =   "+string((n))+"electrons per cubic centimetre");
p1=n+10^14;
disp("p   =   "+string((p1))+"holes per cubic centimetre");


disp("essentially intrinsic");


