//ques-2.22
//Calculating weight of air theoretically required and weight of dry flue gas per kg of fuel and weight of air actually used
clc
C=624;//weight of carbon in coal (in g)
H=41;//weight of hydrogen in coal (in g)
O=69;//weight of oxygen in coal (in g)
N=12;//weight of nitrogen in coal (in g)
S=8;//weight of sulphur in coal (in g)
moisture=151;//weight of moisture in coal (in g)
ash=97;//weight of ash in coal (in g)
w1=129;//weight of carbon dioxide in dry fuel gas (in g)
w2=2;//weight of carbon monoxide in dry fuel gas (in g)
w3=61;//weight of oxygen in dry fuel gas (in g)
w4=808;//weight of nitrogen in dry fuel gas (in g)

//Part (i)
W=(C*(32/12)+H*(16/2)+S*(32/32)-O)*(100/23);//theoretical amount of air (in g)
printf("Theoretical weight of air required for combustion of 1kg coal is %.3f kg.\n",W/1000);

//Part (ii)
m1=w2*(16/28);//weight of oxygen to convert CO to CO2 (in g)
m2=w3-m1;//excess weight of oxygen/kg of flue gas (in g)
m3=w1*(12/44)+w2*(12/28);//weight of C/kg of flue gas (in g)
W_F=C/m3;//weight of flue gas/kg of coal burnt (in g)
printf(" The weight of flue gas per kg of coal burnt is %.3f kg.\n",W_F);

//Part (iii)
W_O=W_F*(m2/1000);//weight of excess oxygen in flue gas (in kg)
e=W_O*(100/23);//excess air/kg coal burnt (in kg)
W_A=W/1000+e;//weight of actual air (in kg)
printf(" The weight of air actually used is %.3f kg.",W_A);
