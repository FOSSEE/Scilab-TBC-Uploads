printf("\t example 13.6b \n");
printf("\t approximate values are mentioned in the book \n");

// EXCHANGER
//Shell side
Id = 27; // inches
Bs = 16; // inches
Ps = 1; // passes

//Tube side
N = 286; // number
l = 12; // inches
Od = 1; // inch
BWG = 14; // bWG
Ptc = 1.25; //inches
Ps1 = 8; // passes

//Clesan surface requirements

//Head load inlet to dew point of steam
st = 2331500; // Btu/hr
delT = 122.2 // °F
hio = 700; // Btu/((hr)(ft^2)(°F)) for water

//From table 13.4 at inlet
NC = 1.8; //NC gas, mol/hr
sm = 20.6;// steam, mol/hr
tt = NC + sm;// mol/hr
printf("\tNC gas + steam is %.1f mol/hr\n",tt);
pN = tt/129.9; // mol/hr
printf("\tpercentage NC gas is %.4f\n",pN);

//From Fig 13.17
hn = 205; //Btu/((hr)(ft^2)(°F))
//At dew point of steam
No=40.75; // Mol/hr
t1 = tt + No; // Mol/hr, total
pN1 = tt/t1; // Mol/hr, %NC
printf("\tpercentage NC is %.3f\n",pN1);

//From  fig 13.7
hn1 = 140; //Btu/((hr)(ft^2)(°F))
lm = 136.5; //Btu/((hr)(ft^2)(°F))
delT = 122.2; // °F
Ac1 = st/(lm * delT); // ft^2
printf("\tAc1 = Q/(U * delT) is %.1f ft^2\n",Ac1);

//At dew point of steam to oulet
sm1 = 20.64; // Mol/hr , Steam
t2 = NC + sm1; // total, Mol/hr
printf("\tNC gas + steam is %.1f mol/hr\n",t2);
pN1 = NC/t2; // % NC gas
printf("\tpercentage NC gas is %.3f \n",pN1);

Uc = 212; // From Fig 13.17, weighted for oil and steam

//At outlet, steam = negligible

Uc = 15;//From Fig 13.17

//Log mean overall coefficient
lm = 74.5; // Btu/((hr)(ft^2)(°F)) , From Fig 13.17
delT = 44.8; // °F
Ac2 = 1306900/(lm * delT);
printf("\tAc2 is %.0f ft^2\n",Ac2);

hl = 770000; // Btu/hr
printf("\tHeat of Liquid(50°API) is %.1ef\n",hl);
wr = (hl/3638400)*35; // °F
printf("\tWater rise = %.1f °F\n",wr);

LMTD = 66.3; //°F
U1=50 //for free convection
As = hl/(U1*LMTD);// ft^2
printf("\tAs = %.1f ft^2\n",As);
Ac = Ac1 + Ac2 + As; //ft^2
printf("\tTotal clean surface %.0f ft^2\n",Ac);

Uc = 3638400/(Ac * 75.5); // Btu/((hr)(ft^2)(°F))
printf("\tClean overall coefficient Uc = %.1f Btu/((hr)(ft^2)(°F))\n",Uc);

x = 0.2618; // ft, from table 10
A = N * l * x; //ft^2
Ud = 3638400/(A * 75.5);
printf("\tDesign coefficient Ud is %.1f\n",Ud);
Rd =(Uc - Ud)/(Uc * Ud); // ((hr)(ft^2)(°F))/Btu
printf("\tDirt factor Rd is %.4f ((hr)(ft^2)(°F))/Btu\n",Rd);

yo = (As/Ac)*A; // ft^2
printf("\tSubmerge = %.0f ft^2 of surface\n",yo);
//end
