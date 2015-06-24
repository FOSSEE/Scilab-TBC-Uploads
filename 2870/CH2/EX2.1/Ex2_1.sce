clc;clear;
//Example 2.1

//constants used
Hu=6.73*10^10;//Energy liberated by 1 kg of uranium

//given values
p=0.75;//assuming the avg density of gasoline in kg/L
V=5;
Hv=44000;
mu=0.1;//mass of uranium used

//calculation
mgas=p*V;//mass of gasoline required per day
Egas=mgas*Hv;
Eu=mu*Hu;
d=Eu/Egas;
d=ceil(d);
disp(d,'the numnber of days the car can run with uranium')
