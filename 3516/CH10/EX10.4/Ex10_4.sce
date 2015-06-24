printf("\t example 10.4 \n");
printf("\t approximate values are mentioned in the book \n");
t1=100; // F
t2=0; // F
T1abs=100+460; // R
T2abs=460; //R
delt=t1-t2;
printf("\t delt is : %.f F \n",delt);
hc=0.3*(delt^0.25); // convection loss, Btu/(hr)*(ft^2)*(°F)
printf("\t convection loss is : %.2f Btu/(hr)(ft^2)(F) \n",hc);
e=0.8; // emissivity
hr=((0.173*e*((T1abs/100)^4-(T2abs/100)^4))/(T1abs-T2abs)); // radiation rate, from 4.32, Btu/(hr)(ft^2)(F)
printf("\t radiation loss is : %.2f Btu/(hr)(ft^2)(F) \n",hr);
hl=hc+hr; // combined loss, Btu/(hr)(ft^2)(F)
printf("\t combined loss is : %.1f Btu/(hr)(ft^2)(F) \n",hl);
D=5; // ft
L=12; // ft
A1=((2*3.14*D^2)/(4))+(3.14*D*L); // total tank area
printf("\t total tank area is : %.1f ft^2 \n",A1);
Q=(hl*A1*delt); // total heat loss
printf("\t total heat loss : %.2e Btu/hr \n",Q);
printf("\t This heat must be supplied by the pipe bundle,Assuming exhaust steam to be at 212°F \n");
d0=1.32;
X=(delt/d0);
tf=((t1+212)/2); // F
printf("\t X is : %.0f \n",X);
printf("\t tf is : %.0f F \n",tf);
hio=48; // from fig 10.4, Btu/(hr)(ft^2)(F)
ho=1500; // condensation of steam,Btu/(hr)(ft^2)(F)
Uc=((hio)*(ho)/(hio+ho)); // clean overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t clean overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",Uc);
Rd=0.02; // dirt factor, (hr)(ft^2)(F)/Btu
UD=((Uc)/((1)+(Uc*Rd))); // design overall coefficient,Btu/(hr)*(ft^2)*(F)
printf("\t design overall coefficient is : %.1f Btu/(hr)*(ft^2)*(F) \n",UD);
A2=((Q)/((UD)*(212-100))); // total surface,ft^2
printf("\t total surface is : %.1f ft^2 \n",A2);
A3=2.06; // area/pipe
N=(A2/A3);
printf("\t number of pipes are : %.0f \n",N);
//end
