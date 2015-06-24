//acids and bases//
//example 2.2//
//(a)//
N=0.002;//normality of acetic acid solution//
a=2.3;//percentage of ionization//
H=N*a/100;//concentration of H+ ion//
printf('the concentration of H+ ions is %fg.ion/lit',H);
pH=-log10(H);
printf('\n pH value of acid solution is %f',pH);
//(b)(i)//
N1=0.01;//normality of acetic acid solution//
a1=60;//percentage of ionization//
H1=N1*a1/100;//concentration of H+ ion//
printf('\nthe concentration of H+ ions is %fg.ion/lit',H1);
pH1=-log10(H1);
printf('\n pH value of acid solution is %f',pH1);
//(b)(ii)//
N2=0.1;//normality of acetic acid solution//
a2=1.8;//percentage of ionization//
H2=N2*a2/100;//concentration of H+ ion//
printf('\nthe concentration of H+ ions is %fg.ion/lit',H2);
pH2=-log10(H2);
printf('\n pH value of acid solution is %f',pH2);
//(b)(iii)//
N3=0.04;//normality of HNO3//
a3=100;//percentage of ionization//
H3=N3*a3/100;
printf("\nthe concentration of H+ ions is %fg.ion/lit",H3);
pH3=-log10(H3);
printf("\n the pH of 0.04NHNO3 solution is %f",pH3);
N4=0.0001;//normality of Hcl//
a4=100;//percentage of ionization//
H4=N4*a4/100;
printf("\nthe concentration of H+ ions is %fg.ion/lit",H4);
pH4=-log10(H4);
printf("\n the pH of 0.0001NHcl solution is %f",pH4);
N5=1;//normality of Hcl//
a5=100;//percentage of ionization//
H5=N5*a5/100;
printf("\nthe concentration of H+ ions is %fg.ion/lit",H5);
pH5=-log10(H5);
printf("\n the pH of 1NHcl solution is %f",pH5);
N6=0.1;//normality of HNO3//
a6=100;//percentage of ionization//
OH6=N6*a6/100;
printf("\nthe concentration of OH- ions is %fg.ion/lit",OH6);
Kw=10^-14;
H6=Kw/OH6;
pH6=-log10(H6);
printf("\n the pH of 0.1N NaOH solution is %f",pH6);
N7=0.001;//normality of NaOH//
a7=100;//percentage of ionization//
OH7=N7*a7/100;
printf("\nthe concentration of OH- ions is %fg.ion/lit",OH7);
Kw=10^-14;
H7=Kw/OH7;
pH7=-log10(H7);
printf("\n the pH of 0.01NaOH solution is %f",pH7);
//(b)(iv)//
W=4;//weight of NaOH dissolved in water in grams//
EW=40;//equivalent weight weight of NaOH//
N8=W/EW;
printf("\nnormality of NaOH is %fN",N8);
a8=100;//percentage of ionization//
OH8=N8*a8/100;
printf("\nthe concentration of OH- ions is %fg.ion/lit",OH8);
Kw=10^-14;
H8=Kw/OH8;
pH8=-log10(H8);
printf("\n the pH of NaOH solution is %f",pH8);