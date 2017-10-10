//ques-5.35
//Calculating transport number of Copper and sulphate ions
clc
x=0.6236;//weight of Cu in anodic solution after electrolysis (in g)
y=0.635;//weight of Cu in anodic solution before electrolysis (in g)
m=0.1351;//mass of Ag deposited in voltameter (in g)
z=(m*(63.6/2))/107.88;//equivalent of Cu deposited in voltameter (in g)
t1=(y-x)/z;//transport number of copper ions
t2=1-t1;//transport number of sulphate ions
printf("Transport number of Copper and sulphate ions are %.3f and %.3f respectively.",t1,t2);
