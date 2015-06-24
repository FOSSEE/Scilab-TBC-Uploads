clc;
clear;
h=1250;//ft 
T=59;//degree fareheit
p=14.7;//psi (abs)
sw=0.0765;//lb/ft^3, (specific weight of air at p)

//considering air to be compressible
//p1/p2= exp(-(g*(z1-z2))/(R*T))
ratp=exp(-(32.2*h)/(1716*(59+460)));
disp(ratp,"ratio of pressure at the top to that at the base considering air to be compressible=")

//considering air to be incompressible
//p2=p1-(sw*(z2-z1));
ratp1=1-((sw*h)/(p*144));
disp(ratp1,"ratio of pressure at the top to that at the base considering air to be incompressible=")
count=1;
zdiff=0:5000;

for i= 0:5000
    j(count)=1-((sw*i)/(p*144));
    count=count+1;
end
num=1;

for k=0:5000
    l(num)=exp(-(32.2*k)/(1716*(59+460)));
    num=num+1;
    
end
plot(zdiff,j,"o")
plot(zdiff,l,"+")
xtitle("p2/p1 vs z2-z1","z1-z2","p2/p1")




