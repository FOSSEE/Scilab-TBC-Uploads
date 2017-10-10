printf("\t example 16.2 \n");
printf("\t approximate values are mentioned in the book \n");
Ts=302; // F
t1=151;
t2=185;
w=15200; // lb/hr
// The dropwise condensation of steam was promoted with oil.
aa=(3.14*(3.068^2-1.25^2))/(4*144)-((20*0.035*0.75)/(144));
printf("\t annulus flow area : %.4f ft^2 \n",aa);
p=(3.14*(1.25/12))-(20*0.035/12)+(20*0.75*2/12);
printf("\t wetted perimeter : %.2f ft \n",p);
De=(4*aa/p);
printf("\t equivalent diameter : %.3f ft \n",De);
Q=w*0.523*(t2-t1);
printf("\t heat load : %.2e Btu/hr \n",Q);
delt1=Ts-t1; //F
delt2=Ts-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.0f F \n",LMTD);
Ai=0.277; // ft^2/ft
n=20; // number of fins
Ui=(Q/(Ai*n*LMTD));
printf("\t Ui : %.0f Btu/(hr)*(ft^2)*(F) \n",Ui);
hi=3000; // assumed value for dropwise condensation of steam
hfi=(Ui*hi)/(hi-Ui);
printf("\t hfi : %.0f Btu/(hr)*(ft^2)*(F) \n",hfi);
hf=120; // from fig 16.7 for hfi=418
mu=1.94; // lb/(ft*hr)
k=0.079;
Z=2.34; // Z=((c*mu)/k)^(1/3)
jf=(hf*De/(Z*k)); // eq 16.36
printf("\t jf : %.0f \n",jf);
Ga=(w/aa);
printf("\t Ga : %.2e lb/(hr)*(ft^2) \n",Ga);
Rea=(De*Ga/mu);
printf("\t Rea : %.2e \n",Rea);
// end


