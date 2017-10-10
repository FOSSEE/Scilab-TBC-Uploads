//ques-5.37
//Calculating transport number of Copper and sulphate ions
clc
p=2.84;//percentage strength of CuSO4
m=54.7;//mass of cathode solution (in g)
x=0.409;//weight of Cu in cathode solution after electrolysis (in g)
y=(p/100)*m*((63.5/2)/(159.6/2));//weight of Cu in cathode solution before electrolysis (in g)
z=0.804;//increase in weight of cathode (in g)
t2=(y-x)/z;//transport number of sulphate ions
t1=1-t2;//transport number of copper ions
printf("Transport number of copper and sulphate ions are %.3f and %.3f respetively.",t1,t2);
