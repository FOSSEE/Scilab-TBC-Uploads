//example 4
//Determinig the missing properties 
clear
clc
T1=300 //given temp. in Celsius
u1=2780 //given specific internal enrgy in kJ/kg
disp('From steam table, at T=300 C,ug=2563.0 kJ/kg.So,u1>ug ,it means the state is in the superheated vapor region.So, by interplotation,we find P=1648 kPa and v=0.1542 m^3/kg')
P2=2000 //hiven pressure in kPa
u2=2000 //given specific intrernal energy in kJ/kg
disp('at P=2000 kPa,')
uf=906.4 //in kJ/kg
ug=2600.3 //in kJ/kg 
x2=(u2-906.4)/(ug-uf) 
disp('Also, under the given conditions')
vf=0.001177 //in m^3/kg 
vg=0.099627 //in m^3/kg
v2=vf+x2*(vg-vf)//Specific volume for water in m^3/kg
printf("\n hence,specific volume for water is v2 = %.5f m^3/kg. \n",v2)
printf("\n Therefore ,this state is in the two phase region with quality x2=%.4f . \n",x2)