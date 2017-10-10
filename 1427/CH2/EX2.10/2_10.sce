//ques-2.10
//Calculating percentage results of the analysis
clc
W=2.5;//Weight of sample (in g)
w1=2.415;//Mass of residue after step-1 (in g)
w2=1.528;//Mass of residue after step-2 (in g)
w3=0.245;//Mass of ash (in g)
m1=W-w1;//Mass of moisture in coal sample (in g)
m2=w1-w2;//Mass of volatile matter (in g)
p1=(m1/W)*100;//Percentage of moisture
p2=(m2/W)*100;////Percentage of volatile matter
p3=(w3/W)*100;//Percentage of ash
C=100-(p1+p2+p3);//Percentage of fixed carbon
printf("The percentage of moisture, volatile matter, ash and fixed carbon are %.1f, %.2f, %.1f and %.2f respectively.\n",p1,p2,p3,C);
