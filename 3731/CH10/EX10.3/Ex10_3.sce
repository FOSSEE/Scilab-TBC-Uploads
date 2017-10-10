//Chapter 10:Traction Drives
//Example 3
clc;

//Variable Initialization
G=8       //up gradient
r=25      //train resistance N/tonne
M=500     //mass of the electric train in tonne
n=0.8     //combine effiency of transmission and motor

//Speed-Time curve characteristics
t1=60       //characteristic for uniform accelaration at v1 in sec
alpha=2.5   //given accelaration in km/hr/sec at t1
t2=5*60     //characteristic for constant speed in sec 
t3=3*60     //characteristic for coasting in sec
B=3         //dynamic braking deceleration in km/hr/sec

//Solution
Vm=alpha*t1  //peak voltage in V
Fg=9.81*M*G  //tractive effort required to overcome the force of gravity
Fr=M*r       //tractive effort required to overcome the train resistance
F_bc=Fg+Fr   //retarding force during coasting in N

Me=1.1*M
B_c=F_bc/(277.8*Me)   //deceleration during coasting in metre per second square
V=Vm-B_c*t3           //speed after coasting in m/s
t4=V/B                //characteristic for a dynamic braking of 3km/hr/sec

d1=1/2*Vm*t1/3600     //distance covered during accelaration 
d2=Vm*t2/3600         //distance covered during constant speed
d3=1/2*(Vm+V)*t3/3600 //distance covered coasting
d4=1/2*V*t4/3600      //distance covered during braking
D=d1+d2+d3+d4         //distance during stops
D1=d1+d2
x=D1/D
y=1-x
E=(0.01072*Vm**2/D)*(Me/M)+2.725*G*x+0.2778*r*x   //specific energy output in Whptpkm
Eo=E/n    //specific energy consumption in Whptpkm

//Result
mprintf("\n Specific energy consumption is : Eo= %.1f Whptpkm",Eo)
