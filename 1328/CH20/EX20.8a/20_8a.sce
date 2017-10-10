printf("\t example 20.8a \n");
printf("\t approximate values are mentioned in the book \n");
L=3; // ft
B=2; // ft
h=18/12; // ft , height of water present in tank
printf("\t unsteady state \n");
m=(L*B*h*62.5);
printf("\t Lb of water is : %.1f lb \n",m);
t1=50;
t2=150;
c=1;
Q=(m*c*(t2-t1))/(2*3412); // kwhr
printf("\t heat to be supplied : %.2f kwhr \n",Q);
printf("\t losses \n");
Q1=(L*B*260)/(1000); // from fig 20.25c
printf("\t from surface of water : %.2f kwhr \n",Q1);
Q2=(5.5*((2*B*2)+(2*L*B))/(1000)); // from fig 20.25c
printf("\t from sides of vessel : %.2f kwhr \n",Q2);
printf("\t losses from bottom are negigible \n");
Qt=(Q+Q1+Q2);
printf("\t total requirement : %.2f kwhr \n",Qt);
printf("\t steady state \n");
m1=8; // gal/hr
Qs=(m1*8.33*c*(t2-t1))/(3412); // kwhr
printf("\t heat to be supplied : %.2f kwhr \n",Qs);
Qts=(Qs+Q1+Q2);
printf("\t total requirement : %.2f kwhr \n",Qts);
// end

