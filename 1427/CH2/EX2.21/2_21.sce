//ques-2.21
//Calculating GCV and NCV of coal and minimum theoretical air required for combustion and composition of dry products with excess air
clc
C=75;//Percentage of carbon in coal
H=9;//Percentage of hydrogen in coal
S=2;//Percentage of sulphur in coal
O=4;//Percentage of oxygen in coal
N=3;//Percentage of nitrogen in coal
ash=7;//Percentage of ash in coal
L=587;//Latent heat of steam (in kcal/kg)
e=25;//Percentage of excess air used

//Part (i)
GCV=(8080*C+34500*(H-O/8)+2240*S)*(1/100);//Gross calorific value (in kcal/kg)
NCV=GCV-0.09*H*L;//Net calorific value (in kcal/kg)
printf("The Gross and net calorific values are %.1f kcal.kg and %.1f kcal/kg.\n",GCV,NCV);

//Part (ii)
min_W=((C/100)*(32/12)+(H/100)*(16/2)+(S/100)*(32/32)-O/100)*(100/23);//minimum weight of air required (in kg)
min_V=min_W*(22.4/28.94);////minimum volume of air required (in kg)
printf(" Minimum weight and volume of air required for combustion are %.3f kg and %.3f kL.\n",min_W,min_V);

//Part (iii) (with excess air)
m1=(C/100)*1000*(44/12);//weight of carbon dioxide as dry product (in g)
m2=min_W*1000*(77/100)*(1+e/100)+(N/100)*1000;//weight of nitrogen as dry product (in g)
m3=min_W*1000*(23/100)*(e/100);//weight of oxygen as dry product (in g)
total=m1+m2+m3;//total weight (in g)
p1=(m1/total)*100;//percentage of carbon dioxide
p2=(m2/total)*100;//percentage of nitrogen
p3=(m3/total)*100;//percentage of oxygen
printf(" The percentages of carbon dioxide, nitrogen and oxygen as dry product are %.2f, %.2f and %.2f respectively.",p1,p2,p3);
