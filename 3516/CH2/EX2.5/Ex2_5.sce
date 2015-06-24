clc
//page 19
printf("\t example 2.5 \n");
printf("\t approximate values are mentioned in the book \n");
t1=150; // assume temperature of outer surface of rockwool,F
ta=70; // temperature of surrounding air,F
ha=2.23; // surface coefficient,Btu/(hr)*(ft^2)*(F)
q=(3.14)*(300-70)/(((2.3/(2*0.033))*log10(3.375/2.375))+(1/((2.23)*(3.375/12)))); // using formula for heat loss,Btu/(hr)*(lin ft), calculation mistake
printf("\t heat loss for linear foot is : %.1f Btu/(hr)*(lin ft) \n",q);
printf("\t Check between ts and t1, since delt/R = deltc/Rc \n");
t1=300-(((104.8)*((2.3)*(log10(3.375/2.375))))/((2)*(3.14)*(.033))); // using eq 2.31,F
printf("\t t1 is : %.1f F \n",t1);
t1=125; // assume temperature of outer surface of rockwool,F
ha=2.10; // surface coefficient,Btu/(hr)*(ft^2)*(F)
q=((3.14)*(300-70))/(((2.3/(2*0.033))*log10(3.375/2.375))+(1/((2.10)*(3.375/12)))); // using formula for heat loss,Btu/(hr)*(lin ft)
printf("\t heat loss for linear foot is : %.1f Btu/(hr)*(lin ft) \n",q);
printf("\t Check between ts and t1, since delt/R = deltc/Rc \n");
t1=300-(((103)*((2.3)*(log10(3.375/2.375))))/((2)*(3.14)*(.033))); // using eq 2.31,F
printf("\t t1 is : %.1f F \n",t1);
// end 
