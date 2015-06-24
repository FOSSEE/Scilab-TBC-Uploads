printf("\t example 17.1 \n");
pw=0.4298; // psia, at 75F, table 7
pt=14.696; // psia
t=75;
Mw=18;
Ma=29;
X=(pw/(pt-pw))*(Mw/Ma);
printf("\t humidity is : %.4f lb water/lb air \n",X);
H=(X*t)+(1051.5*X)+(0.24*t); // eq 17.54
printf("\t enthalpy at 75F is : %.1f Btu/lb dry air \n",H);
// end
