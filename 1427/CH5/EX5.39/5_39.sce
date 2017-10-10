//ques-5.39
//Determining transport number of Silver ions in Silver nitrate
clc
p=0.80;//Percentage strength of AgNO3 solution
x=0.519;//AgNO3 in anode solution after electrolysis (in g)
m=51;//weight of anode solution (in g)
y=(p/100)*m;//AgNO3 in anode solution before electrolysis (in g)
i=1;//current passes (in A)
time=2;//time for current (in minutes)
z=((i*time*60)/96500)*170;//weight of AgNO3 deposited (in g)
t=1-((x-y)/z);//transport number of Ag ions
printf("Tranport number of silver ions is %.3f.",t);
