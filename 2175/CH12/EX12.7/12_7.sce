clc;
p=1.013;//bar
V=2.83;//m^3
R=0.287;
T=288;//K

m_deliv=p*V*10^5/(T*R*10^3);

n=1.3;
z=3;
p2=70;//bar
p1=0.98;//bar
m=m_deliv/60;

T_P=z*[n/(n-1)]*m*R*T*{[(p2/p1)^[(n-1)/(3*n)]]-1};
disp("kW",T_P,"Total indicated powar is:");
