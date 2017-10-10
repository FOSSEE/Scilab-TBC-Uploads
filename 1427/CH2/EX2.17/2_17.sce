//ques-2.17
//Calculating quantities of dry products of combustion
clc
C=662;//Mass of carbon in 1kg of coal sample (in g)
H=42;//Mass of hydrogen in 1kg of coal sample (in g)
O=61;//Mass of oxygen in 1kg of coal sample (in g)
N=14;//Mass of nitrogen in 1kg of coal sample (in g)
S=29;//Mass of sulphur in 1kg of coal sample (in g)
moist=97;//Mass of moisture in 1kg of coal sample (in g)
ash=95;//Mass of ash in 1kg of coal sample (in g)
e=25;//Percentageof excess air used
min_O=C*(32/12)+H*(16/2)+S-O;//Minimum weight of oxygen required (in g)
min_air=min_O*(100/23);//Minimum weight of air required for complete combustion (in g)
m_C=C*(44/12);//Weight of carbon dioxide (with excess air) (in g)
m_S=S*(64/32);//Weight of sulphur dioxide (with excess air) (in g)
m_N=N+min_air*(1+e/100)*(77/100);//Weight of nitrogen (with excess air) (in g)
m_O=min_O*(e/100);//Weight of excess oxygen (in g)
Total=m_C+m_S+m_N+m_O;//Total weight of dry products (in g)
printf("The total weight of dry products is %.3f kg.",Total/1000);
