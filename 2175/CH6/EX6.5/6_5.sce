clc;
nH=0.5;//kmole
m_O=32;
VH!VO=2;
x=m_O*nH/VH!VO;
disp("mass of oxygen required is:");
disp("kg",x)
nO=x/m_O;
n=nH+nO;
R_=8.3145;
T=288;//K
p=1;//bar
V=n*R_*T*10^3/(p*10^5);
disp("Volume of container is:");
disp("m^3",V);
