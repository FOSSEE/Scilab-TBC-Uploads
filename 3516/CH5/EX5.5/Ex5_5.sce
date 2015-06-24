printf("\t example 5.5 \n");
printf("\t approximate values are mentioned in the book \n");
printf("\t for inlet \n");
t1=99.1; // temperature of inlet,F
t2=129.2; // temperature of outlet,F
c=.478; // Btu/(hr)*(ft)*(F/ft)
mu=2.95*2.42; // lb/(ft)(hr)
k=0.078; // Btu/(hr)*(ft)*(F/ft)
G=854000; // mass velocity,lb/(ft^2)(hr)
D=0.622/12; // diameter,ft
Re=((D)*((G)/(mu)))^(0.9);
printf("\t Re is : %.2e \n",Re);
Pr=((c)*(mu)/k)^(1/3); // prandtl number raised to power 1/3
printf("\t Pr is : %.2f \n",Pr);
Nu=0.0115*(Re)*(Pr); // formula for nusselt number
printf("\t nusselt number is : %.0f \n",Nu);
hi=((k)*(Nu)/(D)); // heat transfer coefficient
printf("\t heat transfer coefficient is : %.0f \n",hi); // caculation mistake in book
printf("\t for outlet \n");
c=.495; // Btu/(hr)*(ft)*(F/ft)
mu=2.20*2.42; // lb/(ft)(hr)
k=0.078; // Btu/(hr)*(ft)*(F/ft)
G=854000; // mass velocity,lb/(ft^2)(hr)
D=0.622/12; // diameter,ft
Re=((D)*((G)/(mu)))^(.9); // reynolds number raised to poer 0.9, calculation mistake in book
printf("\t Re is : %.2e \n",Re);
Pr=((c)*(mu)/k)^(1/3); // prandtl number raised to power 1/3
printf("\t Pr is : %.2f \n",Pr);
Nu=0.0115*(Re)*(Pr); // formula for nusselt number
printf("\t nusselt number is : %.0f \n",Nu);
hi=((k)*(Nu)/(D)); // heat transfer coefficient
printf("\t heat transfer coefficient is : %.0f \n",hi); // caculation mistake in book
//end
