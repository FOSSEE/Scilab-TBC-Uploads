//acids and bases//
//example 2.4//
H1=0.005;//H+ ion concentration of solution in g.ion/lit//
pH1=-log10(H1);
printf("The pH value of solution whose H+ ion concentration is 0.005g.ion/lit is %f",pH1);
H2=3*10^-4;//H+ concentration of the solution//
pH2=-log10(H2);
printf("\nThe pH of a solution in which H+ is 3*10^-4 is %f",pH2);
pOH2=14-pH2;
printf("\npOH of the solution is %f",pOH2);
k=10^-14;//dissociation constant of water//
OH2=k/H2;
OH2a=OH2/10^-11;
printf("\nOH- concentration for a solution is %f*10^-11M",OH2a);
OH3=0.1//hydroxyl concentration of a solution//
H3=k/OH3;
pH3=-log10(H3);
printf("\npH of the solution whose hydroxyl concentration is N/10g.ion/lit is %f",pH3);
k4=1.8*10^-5//dissociation constant of acetic acid at 180C//
N4=0.1;//normality of acetic acid//
V4=1/N4;
a4=sqrt(k4*V4);//formula for degree of dissociation//
H4=N4*a4;//H+ ion concentration//
pH4=-log10(H4);
printf("\npH of 0.1N acetic acid solution is %f",pH4);
N5=0.01;//normality of acetic acid//
V5=1/N5;
a5=sqrt(k4*V5);//formula for degree of dissociation//
H5=N5*a5;//H+ ion concentration//
pH5=-log10(H5);
printf("\npH of 0.01N acetic acid solution is %f",pH5);
N6=0.001;//normality of acetic acid//
V6=1/N6;
a6=sqrt(k4*V6);//formula for degree of dissociation//
H6=N6*a6;//H+ ion concentration//
pH6=-log10(H6);
printf("\npH of 0.001N acetic acid solution is %f",pH6);