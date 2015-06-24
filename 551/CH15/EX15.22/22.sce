clc
cp=4.187; //kJ/kg °C
u=0.596*10^(-3); //Ns/m^2
k=0.635; //W/m °C
Pr=3.93; 
d=0.020; //m
l=2; //m
m_c=10; //kg/s
t_c1=17; ///°C
t_h1=100; //°C
t_h2=100; //°C
rho=1000;
N=200;
Np=N/l;
h0=10*10^3;

V=m_c*4/%pi/d^2/rho/Np;
Re=rho*V*d/u;
hi=k/d*0.023*(Re)^0.8*(Pr)^0.33;
U=hi*h0/(hi+h0);

//theta1=t_h1-t_c1;
// theta2=t_h2-t_c2;
//AMTD=(theta1+theta2)/2
//AMTD=91.5 - 0.5*t_c2

t_c2=(U*%pi*d*l*N*91.5 + m_c*cp*10^3*t_c1)/(m_c*cp*10^3 + U*%pi*d*l*N*0.5);
disp("water exit temperature =")
disp(t_c2)
disp("°C")