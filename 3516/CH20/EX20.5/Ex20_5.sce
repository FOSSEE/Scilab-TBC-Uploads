printf("\t example 20.5 \n");
printf("\t approximate values are mentioned in the book \n");
Nt=25; // number of tubes
A=50; // total projected area
Tav=100; // F
s=28; // assumption spray, lb/(min)*(ft^2)
Do=0.0833; // ft
PH=0.1562;
Y=0.874;
Z=0.466;
E=(0.171*(Do*Y*Z)^0.1); // (E/(Do*Y*Z)^0.1)=0.171, from fig 20.10
printf("\t evaporation percentage is : %.2f \n",E);
Q=(295*500*(143-130));
printf("\t heat load is : %.2e Btu/hr \n",Q);
Q1=(Q*(1-0.12));
printf("\t sensible heat is : %.2e Btu/hr \n",Q1);
t2=(90)+(Q1/(28*60*50));
printf("\t final spray temperature is : %.0f F \n",t2);
w=(s*60*50);
printf("\t total spray : %.1e lb/hr \n",w);
m=(w/(2*4*12));
printf("\t m is : %.0f lb/(hr)*(ft^2) \n",m);
mu=1.84; // lb/(ft)*(hr)
Z=((m^0.3)*Do*Y*Z/(mu*0.125));
printf("\t Z is : %.2f \n",Z);
N=3; // assume 3 horizontal rows
ho=300*(N^0.05); // (ho/(N^0.05))=300, from fig 20.11
printf("\t ho is : %.0f Btu/(hr)*(ft^2)*(F) \n",ho);
printf("\t tube side coefficient \n");
printf("\t assuming even number of passes and tube side velocity about 8fps \n");
at=0.0775; // ft^2
Gt=(295*500/(at)); // mass velocity,lb/(hr)*(ft^2)
printf("\t mass velocity is : %.1e lb/(hr)*(ft^2) \n",Gt);
V=(Gt/(3600*62.5));
printf("\t velocity is : %.2f fps \n",V);
hi=2140; // Btu/(hr)*(ft^2)*(F), fig 25
ID=0.87; // ft
OD=1; // ft
hio=((hi)*(ID/OD)); // using eq.6.5
printf("\t Correct hio to the surface at the OD is : %.2e Btu/(hr)*(ft^2)*(F) \n",hio);
Uc=((ho*hio)/(ho+hio)); // from eq 6.38
printf("\t Uc is : %.0f Btu/(hr)*(ft^2)*(F) \n",Uc);
a=0.2618; // ft^2, table 11
A1=(2*3*25*12*a);
printf("\t total surface is : %.0f ft^2 \n",A1);
T1=143; // inlet hot fluid,F
T2=130; // outlet hot fluid,F
t1=90; // inlet cold fluid,F
t2=110; // outlet cold fluid,F
delt1=T2-t1; //F
delt2=T1-t2; // F
printf("\t delt1 is : %.0f F \n",delt1);
printf("\t delt2 is : %.0f F \n",delt2);
LMTD=((delt2-delt1)/((2.3)*(log10(delt2/delt1))));
printf("\t LMTD is :%.1f F \n",LMTD); // calculation mistake in book
R=0.65;
S=0.377;
FT=0.97; // fig 18
delt=(FT*LMTD);
printf("\t delt is : %.1f F \n",delt);
UD=(Q/(A1*(delt)));
printf("\t UD is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
Rd=((Uc-UD)/((UD)*(Uc))); // (hr)*(ft^2)*(F)/Btu
printf("\t actual Rd is : %.4f (hr)*(ft^2)*(F)/Btu \n",Rd);
printf("\t The assumption of three horizontal rows is satisfactory, since a dirt factor of 0.004 was required \n");
// end



