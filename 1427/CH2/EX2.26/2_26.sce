//ques-2.26
//Calculating minimum weight of air required for combustion of 1kg fuel and composition of dry product of combustion by volume if excess air is used
clc
C=900;//weight of C in fuel (in g)
H=35;//weight of H in fuel (in g)
O=30;//weight of O in fuel (in g)
N=10;//weight of N n fuel (in g)
S=5;//weight of S in fuel (in g)
e=50;//Percentage of excess air being used

//Part (i)
min_O=(C*(32/12)+H*(16/2)+S*(64/32)-O)*(100/23);//minimum weight of air/kg of fuel (in g)
printf("The minimum weight of air required for combustion of 1kg fuel is %.3f kg.\n",min_O/1000);

//Part (ii)
w1=C*(44/12);//weight of CO2 as dry product (in g)
w2=S*(64/32);//weight of SO2 as dry product (in g)
w3=N+min_O*(77/100)*(1+e/100);//weight of N2 as dry product (in g)
w4=min_O*(50/100);//weight of O2 as dry product (in g)
v1=w1/44;//volume of CO2 as dry product
v2=w2/64;//volume of CO2 as dry product
v3=w3/28;//volume of CO2 as dry product
v4=w4/32;//volume of CO2 as dry product
T=v1+v2+v3+v4;//total
p1=(v1/T)*100;//percentage of CO2
p2=(v2/T)*100;//percentage of SO2
p3=(v3/T)*100;//percentage of N2
p4=(v4/T)*100;//percentage of O2
printf(" The percentages of carbon dioxide, sulphur dioxide, nitrogen and oxygen in dry products (by volume) are %.3f, %.3f, %.3f and %.3f respectively.",p1,p2,p3,p4);
