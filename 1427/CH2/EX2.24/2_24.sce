//ques-2.24
//Finding percentage composition of dry products of combustion
clc
C=900;//weight of carbon in fuel (in g)
H=6;//weight of hydrogen in fuel (in g)
p=90;//Percentage of air used for combustion
W_Th=(C*(32/12)+H*(16/2))*(100/23);//theoretical weight of air used (in g)
W=W_Th*(p/100);//actual weight of air (in g)
x1=(W_Th-W)/5.797;//weight of C oxidised to CO (in g)
x2=C-x1;//weight of C oxidised to CO2 (in g)
w1=x1*(28/12);//weight of CO (in g)
w2=x2*(44/12);//weight of CO2 (in g)
w3=W*(77/100);//weight of N2 (in g)
T=w1+w2+w3;//total weight (in g)
p1=(w1/T)*100;//percentage of CO in dry products
p2=(w2/T)*100;//percentage of CO2 in dry products
p3=(w3/T)*100;//percentage of N2 in dry products
printf("The percentages of carbon monoxide, carbon dioxide and nitrogen in dry product are %.2f, %.2f and %.2f respectively.",p1,p2,p3);
