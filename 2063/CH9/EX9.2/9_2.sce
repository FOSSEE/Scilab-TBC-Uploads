clc
clear
//Input data
Pi=60000;//Indicated power of a double acting air compressor in W
P1=1;//Initial pressure in bar
T1=293;//Initial temperature in K
n=1.2;//Polytropic index of the process
P2=8;//Final pressure in bar
N=120;//Speed at which the cylinder operates in rpm
S=150;//Average piston speed in m/min

//Calculations
L=S/(2*N);//Length of the stroke in m
X=(3.14*L)/4;//X=V/D^2 i.e.,Volume of air before compression/square of the diameter in m
Y=((n/(n-1))*P1*10^5*X*(((P2/P1)^((n-1)/n))-1));//Y=W/D^2 Work done by the compressor per cycle in N/m
Nw=2*N;//Number of working strokes per minute since it is a double acting cylinder
D=(((Pi*60)/(Y*Nw))^(0.5))*1000;//Diameter of the cylinder in mm

//Output
printf('(a)Length of the cylinder is %3.3f m \n (b)Diameter of the cylinder is %3.0f mm',L,D)
