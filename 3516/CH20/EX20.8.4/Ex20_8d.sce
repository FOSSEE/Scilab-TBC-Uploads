printf("\t example 20.8d \n");
printf("\t approximate values are mentioned in the book \n");
t1=70;
t2=300; 
L=26; // in
B=12; // in
H=1; // in
c1=0.13
// specific gravity of cast iron is 7.2
printf("\t unsteady state \n");
m=(L*B*H*62.5*7.2/1728); // lb
printf("\t weight of plate : %.0f lb \n",m);
Q1=(m*c1*(t2-t1));
printf("\t heat : %.1e Btu \n",Q1);
printf("\t From Figure 20.25b for a black body the radiation is 1.5w/in^2.The radiation from the top is actually 110 per cent of this value, and from the bottom of the plate it is 55 per cent for an average of 82.5 per cent is taken \n");
Q2=(2*26*12*1.5*0.825/1000); // ke
printf("\t radiation loss : %.1f kw \n",Q2);
Qt=((Q1)/(3412))+(Q2);
printf("\t total requirement : %.1f kw \n",Qt);
printf("\t staedy state \n");
m2=70;
c2=0.22;
Qs=(m2*c2*(t2-t1));
printf("\t heat : %.2e Btu \n",Qs);
Ql=0.8; // kw
Qts=((Qs)/(3412))+(Ql);
printf("\t total requirement : %.2f kw \n",Qts);
printf("\t The steady state is controlling.The requirements are satisfied, by four 24-in. strip heaters, but the sheath temperature must now be checked. Since the temperature drop per unit flux density is 14 to 19F, assume an average of 16.5°F. For clamp-on strips 24 in. long the watts per square inch deliverable are 16 \n");
delt=(16*16.5);
printf("\t delt is : %.0f F \n",delt);
printf("\t The sheath temperature is then 300 + 264 = 564°F, which is satisfactory for steel sheathed elements with a 750F maximum. \n");
// end
