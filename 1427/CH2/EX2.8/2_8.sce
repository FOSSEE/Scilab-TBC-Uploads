//ques-2.8
//Calculating percentage of Sulphur in coal sample
clc
M=32;//Molar mass of Sulphur (in g)
W=0.5;//Weight of coal sample (in g)
w=0.05;//Weight of precipitate formed (in g)
p=(w*M*100)/(233*W);//Percentage of Sulphur
printf("The percentage of Sulphur in coal sample is %.4f.\n",p);
