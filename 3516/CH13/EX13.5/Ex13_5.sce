printf("\t example 13.5 \n");
// for a Basis of one Hour
printf("\t approximate values are mentioned in the book \n");
c(1)=1544; // Flow rate of CO2, Lb/hr
h(1)=4500; // Flow rate of H20, Lb/hr

c(2)=35; //Flow rate of CO2, Mol/hr
h(2)=250;//Flow rate of H20, Mol/hr

t(1)=c(1)+h(1); //Total flow rate , Lb/hr
t(2)=c(2)+h(2); //Total flow rate, Mol/hr

Pt = (30+14.7)/(14.7); //Total Pressure in atm
printf("\t Pt is %.2f\n",Pt);
Pw = ( h(2)/t(2) )*Pt; //Partial pressure of Water in atm

printf("\t Partial Pressure of Water: %.2f atm \n",Pw);

Tw = 267; // from table 7 at 2.68atm
Mm = (t(1)/t(2));

printf("\t mean molecular weight : %.1f \n",Mm);
// weighted temperature difference
// overall balance
//for Inlet
Pv=2.68; // water vapour pressure, atm
Pg=Pt-Pv; // Inert pressure
//for Exit
Pw1 = 0.1152 // Partial pressure of water at 120 F
Pv1 = 0.115; // Water vapor pressure
Pg1 = 2.935; // Inert pressure

w1 = 250; //Pound mols steam inlet
w2 = c(2)*(Pv1/Pg1);
printf("\tPound mols steam exit:%.2f\n",w2);
w3 = w1 - w2;
printf("\tPound mols steam condessed:%.2f\n",w3);
//Assume points at 267, 262, 255,225,150,120 deg F
//For the interval from 267 to 262 F

Pv2 = 2.49; // From table 7 at 262 F
Pg2 = Pt - Pv2; //Inert pressure
printf("\tPg is %.2f",Pg2);

w4 = c(2) * (Pv2/Pg2); //Mol steam remaining
w5 = h(2) - w4; //Mol steam condensed

printf("\tMol steam remaining:%.0f\n",w4);
printf("\tMol steam condensed:%.0f\n",w5);

h1 = (w5*18*937.3) + (0.46*(267-262) * w5 * 18); //Heat of condensation
h2 = (w4 * 18 * 0.46*(267-262)); //Heat from uncondensed steam
h3 = c(1)*0.22*5.0; //Heat from noncondensable

printf("\tHeat of condensation:%.2e\n",h1);
printf("\tHeat from uncondensed steam:%.2e\n",h2);
printf("\tHeat from noncondensable:%.1e\n",h3);

ht = h1+h2+h3;//Total heat
printf("\tTotal heat:%.0f\n",ht);

//Similarily calculating the Heat balance for other intervals
printf("\tInterval,F\tTotal Heat\n\t267-262\t1,598,000\n\t262-255\t1,104,000\n\t255-225\t1,172,000\n\t225-150\t751,000\n\t150-120\t177,000\n\tTotal\t4,802,000\n");

w=4802000/(115-80); //Total water
printf("\tTotal water: %.2e\n",w);
//Water coefficient
Nt = 246;
at1 = 0.302;
n = 4;

at = Nt * (at1/(144*n)); // From eq 7.48
printf("\tat is %.3f ft^2\n",at);
Gt = w/at;
printf("\tGt is %.2e lb/(hr)(ft^2)\n",Gt);
ro = 62.5; 
V = Gt/(3600*ro);
printf("\tV is %.2f fps\n",V);
hi = 1120; // From fig. 25
ID = 0.62;
OD = 0.75;
hi0= hi *(ID/OD); //From eq 6.5
printf("\thi0 is %.0f\n",hi0);
//Mean properties at 267 F
c = ((c(1)*0.22)+(h(1)*0.46))/t(1);  // Calculation mistake in Book
printf("\tMean c:%.3f Btu/(lb)(F)\n",c);

k = ((c(1)*0.0128)+(h(1)*0.015))/t(1); // Calculation mistake in Book
printf("\tMean k:%.4f Btu/(hr)(ft^2)(F/ft)\n",k);

mu = (((c(1)*0.019)+(h(1)*0.0136))/t(1))* 2.42; // Calculation mistake in Book
printf("\tMean mu:%.4f lb/(hr)(ft)\n",mu);

ID1 = 21.25;
C = 0.25;
B = 12;
PT = 1.0;

as = ID1 * C * (B/(144*PT)); //From eq 7.1
printf("\tas is %.3f ft^2\n",as);
Gs = t(1)/as //From eq 7.2
printf("\tGs is %.3e lb/(hr)(ft^2)\n",Gs);
Ds = 0.0792; // From Fig 28
Res = Ds * (Gs/0.0363); // From eq 7.3
printf("\tRes is %.2e\n",Res);
jH = 102; // From Fig 28
x = ((c*mu)/k)^(1/3);
printf("\t(c.mu/k)^1/3 is %.0f\n",x);
h0 = jH * 0.0146 * (x/Ds); //From eq 6.15b
printf("\th0 is %.0f\n",h0);
y = 0.62 // y = (mu/ro * kd)^(2/3)
z = 1.01; // z = ((c*mu)/k)^(2/3)

K = (h0*z)/(0.407*Mm*y); //KG = K/p0f
printf("\tK is %.2f\n",K);
//at point 1
Tg = 244; // F
tW = 115;
delt=(Tg-tW);
printf("\t delt is %.0f F \n",delt);

