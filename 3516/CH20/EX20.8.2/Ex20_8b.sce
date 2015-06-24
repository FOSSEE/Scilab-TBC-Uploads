printf("\t example 20.8b \n");
printf("\t approximate values are mentioned in the book \n");
m=100; // lb
t1=70;
t2=370; 
L=4;
B=3;
n=4; // number of air changers
c1=0.12
Q1=(m*c1*(t2-t1));
printf("\t heat to steel charge : %.1e Btu \n",Q1);
c2=0.25
Q2=(n*L*B*2*0.075*c2*(t2-t1));
printf("\t heat to air : %.1e Btu \n",Q2);
printf("\t From Fig. 20.25a for 52ft^2 of oven outside·surface and a temperature rise of 300F the loss is 5kw for 1 in.thick insulations.For 2 in.thick insulation the loss is 2.5kw \n");
Qt=((Q1+Q2)/(3412))+(2.5);
printf("\t total requirement : %.2f kw \n",Qt);
// end
