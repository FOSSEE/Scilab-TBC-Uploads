
clc;
clear;
//Exampe 3.40
v=17.95*10^-6   //[m^2/s]
dT=353-293  //[K]
k=0.0283    //[W/m.K]
g=9.81  //[m/s^2]
Npr=0.698   //Prandtl number
Cp=1005 //J/(kg.K)
Tf=323  //Film temperature in [K]
Beta=1/Tf   //[K^-1]
l=1 //[m]
Nra=(g*Beta*dT*(l^3)*Npr)/(v^2)

//In textbook result of above statement is wrongly calculated,So
Nra=3.95*10^8
//For Nra <10^9,for a vertical plate,the average nusselt number is
Nnu=0.59*Nra^(1.0/4.0)  //Nusselt number
h=Nnu*k/l   //[W/m^2.K]
h=2.35      //Approx in book
A=l^2   //Area [m^2]
//Heat loss form 4 vertical faces of 1m*1m is 
Q1=4*(h*A*dT)   //[W]
//For top surface 
P=4*l   //Perimeter in [m]
L=A/P   //[m]
Nra=(Npr*g*Beta*dT*(L^3))/(v^2)
Nnu=0.15*Nra^(1.0/3.0)  //Nusselt number
h=Nnu*k/L   //[W/m^2.K]
h=6.7           //Approx
Q2=h*A*dT   //[W]
Q_total=Q1+Q2   //Total heat loss[W]
printf("\n Therefore total heat loss is %d W",Q_total);
