//pagenumber 35 example 17
clear
nd=10^14;//atoms per cubic centimetre
na=5*10^13;//atoms per cubic centimetre
un=3800;
up=1800;
q=1.6*10^-19;//coulomb
resist=80;//ohm metre
e1=5;//volt per metre
w=nd-na;
ni=(un+up)*q*resist;
p1=poly([1 w -ni^2],'q');
roots(p1);//p1=taken as 3.65*19^12
p1=3.65*10^12;
n=p1+w;
j=(n*un+p1*up)*q*e1;
disp("current density   =   "+string((j))+"ampere per square centimetre");


