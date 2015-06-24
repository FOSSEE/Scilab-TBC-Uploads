clc;
T1=526.2;
T2=299.7;
nC=(T1-T2)/T1;
disp(nC,"carnot cycle efficiency is:")
Q=1698;
W=nC*Q;

h1=2800;
s1=6.049;
s2=s1;
sf2=0.391;
sfg2=8.13;
x2=(s2-sf2)/sfg2;

hf2=112;
hfg2=2438;
h2=hf2+(x2*hfg2);

W12=h1-h2;

Wr=W/W12;
disp(Wr,"work ratio is:")
ssc=1/W;
disp("kg/k W h",ssc,"ssc is:");

//part III
disp("")
h3=112;
vf=0.001
p4=42;
p3=0.035;

PW=vf*(p4-p3)*(10^5/10^3);
nR=[{(h1-h2)-(PW)}/{(h1-h3)-(PW)}]
disp(nR,"rankine cycle efficiency is:");

Wr=(W12-PW)/(W12)
disp(Wr,"Work ratio is");

ssc=1/(W12-PW)
disp("kg/k W h",ssc,"Work ratio is:");

//partIII
disp("");
W12_=0.8*W12;
Ceff=[(h1-h2)-PW]/[(h1-h3)-PW];
disp(Ceff,"rankine cycle of isentropic efficiency is:")

Wr=[W12_-PW]/W12_
disp(Wr,"Work ratio is:");

ssc=1/[(h1-h2)-PW]
disp("kg/kW s",ssc,"ssc is:")
