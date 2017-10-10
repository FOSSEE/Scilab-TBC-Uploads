printf("\t example 4.3 \n");
printf("\t approximate values are mentioned in the book \n");
T1=125+460; // R
T2=70+460; // R
e=0.9; // emissivity,using table 4.1B
A=(%pi)*(3.375/12)*(1); // area,ft^2/lin ft
printf("\t area is : %.2f ft^2/lin ft \n",A);
Q=(0.9)*(0.88)*(0.173)*((T1/100)^4-(T2/100)^4); // heat loss using eq.4.32,Btu/(hr)*(lin ft)
printf("\t heat loss  is : %.1f Btu/(hr)*(lin ft) \n",Q);
hr=(Q)/((A)*(T1-T2)); // fictitious film coefficient,using eq 4.33,Btu/(hr)(ft^2)(F)
printf("\t fictitious film coefficient is : %.2f Btu/(hr)(ft^2)(F) \n",hr);
//end
