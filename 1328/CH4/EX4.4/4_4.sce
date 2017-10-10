printf("\t example 4.4 \n");
printf("\t approximate values are mentioned in the book \n");
T1=300+460; // R
T2=75+460; //R
A1=0.622; // area from table 11 in the appendix A,ft^2/lin ft
A2=4*(1*1); // surface area of duct,ft^2/lin ft
e1=0.79; // emissivity of oxidized steel from table 4.1
e2=0.276; // emissivity of oxidized zinc from table 4.1
printf("\t surface area of pipe is : %.3f ft^2/lin ft \n",A1);
printf("\t surface area of duct is : %.0f ft^2/lin ft \n",A2);
printf("\t The surface of the pipe is not negligible by comparison with that of the duct, and(f) of Table 4.2 applies most nearly \n");
Fa=1; // from table 4.2
Fe=((1)/((1/e1)+((A1/A2)*((1/e2)-1)))); // from table 4.2
printf("\t Fe is : %.2f \n",Fe);
Q=(0.173*10^-8)*(Fa)*(Fe)*(A1)*((T1)^4-(T2)^4); // heat loss due to radiation,Btu/(hr)*(lin ft)
printf("\t heat loss due to radiation is : %.0f Btu/(hr)*(lin ft) \n",Q);
// end
