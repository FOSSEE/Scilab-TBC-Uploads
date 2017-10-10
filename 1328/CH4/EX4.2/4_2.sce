printf("\t example 4.2 \n");
printf("\t approximate values are mentioned in the book \n");
T1=1000+460; // R
T2=800+460; // R
e1=0.6; // emissivity of hotter wall
e2=0.8; // emissivity of colder wall
Q=(((0.173)/((1/0.6)+(1/0.8)-1))*((14.6)^4-(12.6)^4)); // using eq.4.26,heat loss per unit area,Btu/(hr)*(ft^2)
printf("\t heat removed from colder wall per unit area is : %.0f Btu/(hr)*(ft^2) \n",Q);
printf("\t For perfect black bodies the value was 3500 Btu/(hr)(ft^2) \n");
// end
