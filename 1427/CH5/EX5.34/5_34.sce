//ques-5.34
//Calculating transport number of silver and nitrate ions
clc
x=0.06227;//Siver nitrate contained in 20g anode solution after electrolysis(in g)
y=0.001788;//Siver nitrate contained in 1g anode solution before electrolysis(in g)
y=y*20;//Siver nitrate contained in 20g anode solution before electrolysis(in g)
m=0.0322;//mass of Ag deposited on voltameter (in g)
z=(m*170)/108;//total weight of Silver nitrate electrolysed (in g)
t1=(z-(x-y))/z;//transport number of silver ions
t2=1-t1;//transport number of nitrate ions
printf("Transport number of silver and nitrate ions are %.3f and %.3f respectively.",t1,t2);
