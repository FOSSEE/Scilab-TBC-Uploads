//pagenumber 37 example 19
clear
e1=750;//volt per metre
b=0.05;//metre square per velocity second
un=0.05;//metre square per velocity second
up=0.14;//metre square per velocity second
//(1) voltage
w=1.25*10^-2;//metre
v1=e1*w;
disp("voltage across sample   =   "+string((v1))+"volt");
//(2) drift velocity
vd=un*e1;
disp("drift velocity   =   "+string((vd))+"metre per second");
//transverse force per  coulomb
f1=vd*b;
disp("transverse force per  coulomb   =   "+string((f1))+"newton per coulomb");
//(4) transverse electric field
e1=vd*b;
disp("transverse electric field   =   "+string((e1))+"volt per metre");
//(5) hall voltage
q=0.9*10^-2;
vh=e1*q;

disp("hall voltage   =   "+string((vh))+"volt");





