//Chapter 2
//Example 2.7
//page 69
//To find inductive reactance of for the three phase bundled conductors
clear;clc;
r=0.01725; //radius of each conductor
//from the figure we can declare the distances
d=7;
s=0.4;
//Mutual GMD between bundles of phases a and b
Dab=(d*(d+s)*(d-s)*d)^(1/4);
//Mutual GMD between bundles of phases b and c
Dbc=Dab ; //by symmetry
//Mutual GMD between bundles of phases c and a
Dca=(2*d*(2*d+s)*(2*d-s)*2*d)^(1/4);
//Equivalent GMD is calculated as
Deq=(Dab*Dbc*Dca)^(1/3);
//self GMD is given by
Ds=(0.7788*1.725*10^(-2)*0.4*0.7788*1.725*10^(-2)*0.4)^(1/4);
//Inductive reactance per phase is given by
Xl=2*%pi*50*10^(-3)*0.461*log10(Deq/Ds); //10^(-3) because per km is asked
printf("\n\nMutual GMD between bundles of phases a and b = %0.3fm\n\n",Dab);
printf("Mutual GMD between bundles of phases b and c = %0.3fm\n\n",Dbc);
printf("Mutual GMD between bundles of phases c and a = %0.3fm\n\n",Dca);
printf("Equivalent GMD = %0.3fm\n\n",Deq);
printf("Self GMD of the bundles = %0.3fm\n\n",Ds);
printf("Inductive reactance per phase = %0.3f ohms/km\n\n",Xl);

//now let us compute reactance when center to centerr distances are used
Deq1=(d*d*2*d)^(1/3);
Xl1=2*%pi*50*0.461*10^(-3)*log10(Deq1/Ds);
printf("\n When radius of conductors are neglected and only distance between conductors are used, we get below results:\n\n");
printf("Equivalent mean distance is = %f\n\n",Deq1);
printf("Inductive reactance per phase = %0.3f ohms/km\n\n",Xl1);

//when bundle of conductors are replaced by an equivalent single conductor 
cond_dia=sqrt(2)*1.725*10^(-3); //conductor diameter for same cross-sectional area
Xl2=2*%pi*50*0.461*10^(-3)*log10(Deq1/cond_dia);
printf("\nWhen bundle of conductors are replaced by an equivalent single conductor:\n\n");
printf("Inductive reactance per phase = %0.3f ohms/km\n\n",Xl2) ;
percentage_increase=((Xl2-Xl1)/Xl1)*100;
printf("This is %0.2f higher than corresponding value for a bundled conductor line.",percentage_increase);

