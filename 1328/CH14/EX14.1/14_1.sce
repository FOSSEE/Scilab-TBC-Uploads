printf("\t example 14.1 \n");
printf("\t approximate values are mentioned in the book \n");

t1 = 300; //°F
t2 = 226; //°F
bs = 700; // Btu/((hr)(ft^2)(°F))
//Heat Balance
Qv = 10000 * 961; // Btu/hr
printf("\tQevap is %.2e Btu/hr\n",Qv);
Q3 = 10550 * 910; //Btu/hr
printf("\tQ300°F is %.2e Btu/hr\n",Q3);

delT = t1-t2; //°F
printf("\tTemperature head = %.0f °F\n",delT);
Ud = bs * 0.865;
printf("\tOverall coefficient %.0f\n",Ud);
A = Qv/(Ud * delT); //ft^2
printf("\tSurface required is %.0f ft^2\n",A); //Wrong calculation in book
//end
