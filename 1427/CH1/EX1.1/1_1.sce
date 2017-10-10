//ques-1.1
//Calculating grams of Ferrous Sulphate required per litre
clc
hard=210.5;//hardness given (in ppm)
m1=56;//Molar mass of Fe (in g)
m2=32;//Molar mass of S (in g)
m3=16;//Molar mass of O (in g)
m4=40;//Molar mass of Ca (in g)
m5=12;//Molar mass of C (in g)
M1=m1+m2+4*m3;//Molar mass of Ferrous sulphate (in g)
M2=m4+m5+3*m3;//Molar mass of Calcium carbonate (in g)
//M2 ppm of hardness = M1 ppm of Ferrous sulphate
amount=(M1/M2)*hard;//amount of Ferrous sulphate required (in ppm)
printf("The amount of Ferrous sulphate required is %.5f g.",amount/1000);
