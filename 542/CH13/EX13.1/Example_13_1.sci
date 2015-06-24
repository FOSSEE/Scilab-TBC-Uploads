clear all;
clc;
printf("\n Example 13.1");
printf("\n    (a) Countercurrent operation");
//(a) Countercurrent operation
S = 1.6*10^(-4);               //Solvent flow rate in m^3/sec
mass_flowrate = (S*800);       //mass flow rate is in kg/sec

//Considering the solution, 400cm3/s = 4 × 10−4 m^3/sec containing, say, a m^3/sec A and (5 × 10−4 − a) m3/sec B.
//Thus mass flow rate of A = 1200a kg/sec
//and mass flow rate of B = (4*10^(-4)-a)*1000 = (0.4-1000a)kg/sec
//a total of:                    (0.4+200a) kg/sec
C = poly([0],'C');
C1 = roots(0.1*(0.4+200*C)-1200*C);
printf("\n Concentration of the solution is %.2f*10^(-5) m^3/sec",C1*10^5);
printf("\n mass flow rate of A = %.3f kg/sec",1200*C1);
printf("\n mass flow rate of B =%.3f kg/sec",0.4+200*C1);
printf("\n Ratio of A/B in the feed, Xf = %.3f kg/kg",0.041/0.366);

X = [0.05 0.10 0.15];
Y = [0.069 0.159 0.258];
plot(X,Y);
xtitle("Equilibrium curve","kg A/kg B","kg A/kg S");
//From The curve:
slope = 0.366/0.128;
printf("\n Slope of the equilibrium line is %.2f",slope);

//Since pure solvent is added, Yn+1 = Y4 = 0 and a line of slope 2.86 is drawn in such that stepping off from Xf = 0.112 kg/kg to Y4 = 0 gives exactly three stages. When Y4 = 0, Xn = X3 = 0.057 kg/kg
printf("\n The composition of final raffinate is 0.057kg A/kg B");

printf("\n\n\n      (b)Multiple contact");
printf("\n Stage 1");
printf("\n In this case %.4f kg/sec",0.128/3);
//and from the equilibrium curve, the extract contains 0.18 A/kg S and (0.18 × 0.0427) = 0.0077 kg/s A.
printf("\n Thus raffinate from stage 1 contains %.4f kg/sec Aand %.3f kg/sec B",(0.041-0.0077),0.366);
X1 = 0.0333/0.366;
printf("\n X1 = %.3f kg/kg",0.0333/0.366);

printf("\n Stage 2");
//the extract contains 0.14 kg A/kg S
printf("\n The extract contains %.4f kg/sec A",0.14*0.0427);
//Thus: the raffinate from stage 2 contains (0.0333 − 0.0060) = 0.0273 kg/s A and 0.366 kg/s B
X2 = (0.0273/0.366);
printf("\n X2 = %.3f kg/kg",X2);

printf("\n Stage 3");
//the extract contains 0.114 kg A/kg S
printf("\n The extract contains %.4f kg/sec A/kg S",0.114*0.0427);
printf("\n Thus the raffinate contains %.4f kg/sec A and %.3f kg/sec B",(0.0273-0.0049),0.366);
printf("\n The composition of final raffinate = %3f kg A/kg B",0.0224/0.366);













