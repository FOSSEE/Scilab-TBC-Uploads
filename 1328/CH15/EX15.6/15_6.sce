printf("\t example 15.6\n");
printf("\t approximate values are mentioned in the book \n");
//20000=WD+WB;
//0.99*WD+(0.05*WB)=(20000*.5);
// solving above two eq. we get WD and WB
WD=9570; // lb/hr
WB=10430; // lb/hr
HBl=108; // fig 3 and 12
HDl=85.8; //fig 3 and 12
HDv=253.8; // fig 3 and 12
HFl=92; // fig 3 and 12
l=153; // fig 3 and 12
QR=((2.54+1)*WD*(HDv))-(2.54*WD*HDl)+(WB*HBl)-(20000*HFl);
printf("\t total heat duty : %.1e Btu/hr \n",QR);
Q=QR/153;
printf("\t total heat duty : %.2e lb/hr \n",Q);
// end
