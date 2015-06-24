clc;
p1=1;//bar
p2=10;//bar
n=1.1;
v1=0.16;//m^3

v2=v1*(p1/p2)^(1/n);

W=(p2*v2-p1*v1)*10^5/[10^3*(n-1)];
disp("work done by the refrigerant is:");
disp("kJ",W);

hg1=174.2;
u1=hg1-(p1*10^5*v1/10^3);

hg2=203.8;//kJ/kg
vg2=0.018;//m^3
v=0.02;//m^3
h=224;//kJ/kg
h2=hg2+(v2-vg2)*(h-hg2)/(v-vg2);
u2=h2-(p2*10^5*v2/10^3)

Q=-W+(u2-u1);
disp("heat transferred is:");
disp("kJ/kg",Q)
