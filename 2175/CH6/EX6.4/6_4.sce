clc;
VO=0.21;
VN=0.79;
n=3.5;

nO=VO*n;
nN=VN*n
nC=1;

m_O=32;
m_N=28;
m_C=44;

mO=m_O*nO;
mN=m_N*nN;
mC=m_C*nC;

m=mO+mN+mC;
disp("total mass is:");
disp("kg",m);

//percentage of carbon is
mc=12;
P=mc*100/m;
disp("percentage of carbon is:");
disp("%",P)


n=nO+nN+nC;
m_=[nO*m_O/n]+[nN*m_N/n]+[nC*m_C/n]

R_=8.3145;
R=R_/m_;
disp("specific gas constant for the mix is:");
disp("kJ/kg K",R);

T=288;//K
p=1;//bar
v=R*T*10^3/(p*10^5);
disp("specific volume of the mix at 1 bar and 15 C is");
disp("m^3/kg",v)
