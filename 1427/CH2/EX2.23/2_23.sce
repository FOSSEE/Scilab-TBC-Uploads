//ques-2.23
//Calculating percentage of excess air used for combustion of coal
clc
C=540;//weight of carbon in coal (in g)
H=65;//weight of hydrogen in coal (in g)
S=32;//weight of sulphur in coal (in g)
O=60;//weight of oxygen in coal (in g)
N=18;//weight of nitrogen in coal (in g)
moisture=173;//weight of moisture in coal (in g)
M=20;//total weight of dry products/kg of coal burnt (in kg)
m1=C*(32/12);//weight of oxygen for carbon (in g)
m2=H*(16/2);//weight of oxygen for hydrogen (in g)
m3=S*(32/32);//weight of oxygen for sulphur (in g)
total=m1+m2+m3;//total weight of oxygen required (in g)
net=total-O;//net oxygen required (in g)
W1=net*(100/23);//corresponding weight of air (in g)
w1=C*(44/12);//weight of carbon dioxide in dry flue gas (in g)
w2=S*(64/32);//weight of sulphur dioxide in dry flue gas (in g)
w3=N;//weight of nitrogen in dry flue gas (in g)
W2=w1+w2+w3;//total weight of dry flue gas (in g)
T=W1*(77/100)+W2;//total weight of dry products (in g)
W3=M-T/1000;//weight of excess air (in kg)
P=(W3/W1)*100*1000;//percentage of excess air
printf("The percentage of excess air used is %.1f.",P);
