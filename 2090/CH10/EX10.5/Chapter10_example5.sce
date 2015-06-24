clc
clear
//Input data
v=6.5;//The volume of fuel in the barrel in cc
d=0.3;//The dimeter of fuel pipe line in cm
l=65;//The length of the fuel pipe line in cm 
vi=2.5;//The volume of fuel in the injection valve in cc
K=78.5*10^-6;//The coefficient of compressibility of the oil per bar
p1=1;//The atmospheric pressure in bar
p2=180;//The pressure due to pump in bar
v3=0.1;//The pump displacement necessary for the fuel in cc
e=0.75;//The effective stroke of the plunger in cm
pi=3.141;//Mathematical constant of pi

//Calculations
V1=v+((pi*d^2)/4)*l+vi;//The total initial volume in cc
V=K*V1*(p2-p1);//Change in volume due to compression in cc
T=(V)+v3;//Total displacement of the plunger in cc
L=T*(4/pi)*(1/(e^2));//Effective stroke of the plunger in cm

//Output
printf('(a) The total displacement of the plunger = %3.3f cc \n (b) The effective stroke of the plunger = %3.3f cm',T,L)
