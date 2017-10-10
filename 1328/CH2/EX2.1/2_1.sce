printf("\t Example 2.1 \n");
printf("\t approximate values are mentioned in the book \n");
Tavg=900; // average temperature of the wall,F
k=0.15; // Thermal conductivity at 932 F,Btu/(hr)(ft^2)(F/ft)
T1=1500; // hot side temperature,F
T2=300; // cold side temperature,F
A=192; // surface area,ft^2
L=0.5; // thickness,ft
Q=(k)*(A)*(T1-T2)/L; // formula for heat,Btu/hr
printf("\t heat is : %.2e Btu/hr \n",Q);
//end
