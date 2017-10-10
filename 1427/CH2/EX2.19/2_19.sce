//ques-2.19
//Calculating amount of air for combustion and amount of dry products in fuel gas
clc
C=90;//Percentage of carbon in fuel
H=6;//Percentage of hydrogen in fuel
S=2.5;//Percentage of sulphur in fuel
O=1;//Percentage of oxygen in fuel
ash=0.5;//Percentage of ash in fuel
M=1;//Mass of fuel given (in kg)
e=25;//Percentage of excess air used

//Part (i)
m1=(C/100)*M*1000;//mass of carbon in fuel (in g)
m2=(H/100)*M*1000;//mass of hydrogen in fuel (in g)
m3=(2.5/100)*M*1000;//mass of sulphur in fuel (in g)
m4=(O/100)*M*1000;//mass of oxygen in fuel (in g)
m5=(ash/100)*M*1000;//mass of ash in fuel (in g)
W=(m1*(32/12)+m2*(16/2)+m3*(32/32)-m4)*(100/23);//Weight of air for complete combustion (in g)
printf("The amount of air required for complete combustion of 1kg of fuel is %.3f kg.\n",W/1000);

//Part (ii)
//When excess air is being used
w1=m1*(44/12);//weight of carbon dioxide (in g)
w2=m2*(64/32);//weight of sulphur dioxide (in g)
w3=W*(77/100)*(1+e/100);//weight of nitrogen (in g)
w4=m4+W*(23/100)*(1+e/100);//weight of oxygen (in g)
total=w1+w2+w3+w4;//total weight of dry products (in g)
p1=(w1/total)*100;//Percentage of carbon dioxide
p2=(w2/total)*100;//Percentage of sulphur dioxide
p3=(w3/total)*100;//Percentage of nitrogen
p4=(w4/total)*100;//Percentage of oxygen
printf(" The percentages of carbon dioxide, sulphur dioxide, nitrogen and oxygen in dry products are %.2f, %.2f, %.2f and %.2f respectively.",p1,p2,p3,p4);
