//example 18.1
clc; funcprot(0);
// Initialization of Variable
G1=600;//G1=Glambda
alpha=0.85;
G=G1*(2.5-1)*0.5+G1*0.5*(0.5)+G1*(1.0-0.5);
disp(G,"total radiation in W/m^2");
Gabs=alpha*G;
disp(Gabs,"absorbed radiation in W/m^2");
J=0.15*G+525;
disp(J,"total radiosity");
qrad=525-Gabs;
disp(qrad,"net radiative flux leaving the surface in W/m^2");
clear()
