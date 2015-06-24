//page 16
clc
printf("\t example 2.4 \n");
printf("\t approximate values are mentioned in the book \n");
k=0.63; // thermal conductivity of pipe, Btu/(hr)*(ft^2)*(F/ft)
Do=6; // in
Di=5; // in
Ti=200; // inner side temperature,F
To=175; // outer side temperature,F
q=(2*(3.14)*(k)*(Ti-To))/(2.3*log10(Do/Di)); // formula for heat flow,Btu/(hr)*(ft)
printf("\t heat flow is : %.0f Btu/(hr)*(ft) \n",q); 
// caculation mistake in book
// end
