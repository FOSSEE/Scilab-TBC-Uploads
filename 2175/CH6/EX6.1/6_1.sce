clc;
M_O=23.3/100;//kg
M_N=76.7/100;//kg
M_C=45/100;//kg
R=8.3145;
T=288;//K
V=0.4;//m^3

m_o=32;
m_n=28;
pO=M_O*R*T*10^3/(m_o*V*10^5);
pN=M_N*R*T*10^3/(m_n*V*10^5);
m_c=28;
pC=M_C*R*T*10^3/(m_c*V*10^5);
p=pO+pN+pC;

disp("bar",pO,"partial pressure of Oxygen is:")
disp("bar",pN,"partial pressure of Nitrogen is:")
disp("bar",pC,"partial pressure of Carbon monoxide is:")
disp("bar",p,"total pressure is:")
