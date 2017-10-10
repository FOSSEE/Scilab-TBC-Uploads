printf("\t example 5.6 \n");
printf("\t approximate values are mentioned in the book \n");
T1=300; // hot fluid inlet temperature,F
T2=200; // hot fluid outlet temperature,F
t1=80; // cold fluid inlet temperature,F
t2=120; // cold fluid outlet temperature,F
printf("\t for counter current flow \n");
delT=T1-T2; // temperature difference for crude oil,F
printf("\t temperature difference for crude oil is : %.0f F \n",delT);
Kc=0.68; // from fig.17
delt=t2-t1; // temperature difference for gasoline,F
printf("\t temperature difference for gasoline is : %.0f F \n",delt);
Kc<=0.10; // from fig.17
printf("\t The larger value of K. correspQnds to the controlling heat transfer coefficient which is assumed to establish the variation of U with temperature \n");
deltc=T2-t1; //F
delth=T1-t2; // F
printf("\t deltc is : %.0f F \n",deltc);
printf("\t delth is : %.0f F \n",delth);
A=((deltc)/(delth));
printf("\t ratio of two local temperature difference is : %.3f \n",A);
Fc=0.425; // from fig.17
Tc=((T2)+((Fc)*(T1-T2))); // caloric temperature of hot fluid,F
printf("\t caloric temperature of hot fluid is : %.1f F \n",Tc);
tc=((t1)+((Fc)*(t2-t1))); // caloric temperature of cold fluid,F
printf("\t caloric temperature of cold fluid is : %.0f F \n",tc);
// end

