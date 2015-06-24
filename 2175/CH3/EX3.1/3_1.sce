clc
//at 2bar
h1=2707;//kJ/kg
hg=h1;
m1=0.05;//kg
v=0.0658;//m^3
v2=v/m1;//m^3/kg
h2=3072;//kJ/kg
p=2*10^5;
v1=0.8856

Q=m1*(h2-h1);
disp("heat suppleid is:");
disp("kJ",Q);

W=-p*(v2-v1);
disp("work done is:");
disp("N m/kg",W);

//part (ii)
p2=p;
R=0.287;
T2=p2*v/(m1*R*1000);
cp=1.005;
T1=130+273;
Q=m1*cp*(T2-T1);
disp("heat supplie in part (ii)");
disp("kJ",Q);

W=-R*(T2-T1)*m1;
disp("work done by the mass of gas presint:");
disp("kJ",W);
