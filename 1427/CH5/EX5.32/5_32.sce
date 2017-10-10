//ques-5.32
//Calculating pH of different salt solutions
clc
Kw=10^-14;
//(i)0.02M NH4Cl
Kb=1.8*10^-5;
c=0.02;
p1=(-log10(Kw)+log10(Kb)-log10(c))/2;
printf("pH of Ammonium chloride solution is %.2f.\n",p1);

//(ii)0.01M CH3COONa
Ka=Kb;
c=0.01;
p2=(-log10(Kw)-log10(Ka)+log10(c))/2;
printf(" pH of Sodium acetate solution is %.2f.\n",p2);

//(iii)CH3COONH4
p3=(-log10(Kw)-log10(Ka)+log10(Kb))/2;
printf(" pH of Ammonium acetate solution is %.1f.",p3);
