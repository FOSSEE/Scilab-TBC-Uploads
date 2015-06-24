
clc; funcprot(0);
// Initialization of Variable
//Part A page 310
f=0.1524;//focal length
S=1.0/10000;//scale
pw=0.3;//side lap
w=0.23;//format width
pl=0.6;
l=0.23;
//calculation
W=(1-pw)/S*w;
H=f/S+300;
disp(H,"height over datum in m");
N2=30/W+1;
N2=round(N2)
disp(N2-1,"no. of flight strips");
L=(1-pl)*1/S*l/1000;
disp(L,"length of each photograph cover in km");
T=3600*L/240.0;
disp(round(T),"exposure time in s");
Ad=T*240e3/60.0/60.0;//adjusted ground distance
N1=40.0e3/Ad+1;
N1=round(N1)
N=N1*N2;
disp(N,"no. of photographs taken");
//Part b page 317
t=3.0/180*%pi;
ya=82.25;
xa=-62.45;
s=220;
f=152.4;//focal length
H=2500.0e3;
h=500.0e3;
//calculation
theta=s-180;
ya_dash=xa*sin(theta*%pi/180)+ya*cos(theta*%pi/180)+f*tan(t)
S=(f/cos(t)-ya_dash*sin(t))/(H-h);
disp(round(1/S),"scale of photograph in 1 in")
disp("answer varies slightly due to round off error")
clear()
