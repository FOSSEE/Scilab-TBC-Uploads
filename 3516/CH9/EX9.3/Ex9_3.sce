printf("\t example 9.3 \n");
printf("\t approximate values are mentioned in the book \n");
Va=18900; // air in inlet gas
Vw1=692; // water entering
Ma=(Va/29); // moles
Mw=(Vw1/18); // moles
M=(Ma+Mw); // moles
printf("\t total number of moles re : %.1f \n",M);
printf("\t Moles of air is : %.0f \n",Ma);
printf("\t Moles of water is : %.1f \n",Mw);
printf("\t after compression \n");
P=34.2; // pressure,psi
pw=(Mw/M)*(P); // partial pressure
printf("\t partial pressure is :%.1f psi \n",pw);
Td=124; // F, table table 7
printf("\t dew point is : %.0f F \n",Td);
// end
