clc
m_s=800/60; //kg/s
m_c=m_s;
m_g=1350/60; //kg/s
m_h=m_g;
t_h1=650; //0C
t_c1=180; //0C
t_c2=350; //0C
d=0.03; //m
L=3; //m
cph=1; //kJ/kg K
cpc=2.71; //kJ/kg K
h_g=250;
h_s=600;

t_h2=t_h1-(m_c*cpc*(t_c2-t_c1)/cph/m_h);
U=h_g*h_s/(h_g+h_s);
Q=m_h*cph*10^3*(t_h1-t_h2);
theta=((t_h1-t_c2)- (t_h2-t_c1))/log((t_h1-t_c2)/(t_h2-t_c1)); //logarithmic mean temperature difference
//A=N*%pi*d*L

N=Q/U/theta/(%pi*d*L);
disp("number of tubes required =")
disp(N)
disp("tubes")