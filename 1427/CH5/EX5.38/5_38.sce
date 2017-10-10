//ques-5.38
//Calculating transport number of Potassium ions in KCl
clc
m1=3.654;//mass of KCl/100g (in g)
m2=122.93;//mass of cathode solution (in g)
x=5.136;//KCl contained in cathode solution after electrolysis (in g)
y=(m1/100)*m2;//KCl contained in cathode solution before electrolysis (in g)
m3=1.978;//weight of Ag deposited (in g)
z=(m3*74.5)/108;//weight of KCl electrolysed (in g)
t=(x-y)/z;//transport number of K ions
printf("Transport number of potassium ions is %.3f.",t);
