// To determine the total power , active and reactive , supplied by the generator and the p.f at which the generator must operate .
clear
clc;
V=1;//voltage (p.u)
Pa=.5;//active power at A (p.u)
Pr=.375;// reactive power at A(p.u)
Xca=0.075+0.04;// reactance between C and A 
Pl=((Pa^2)+(Pr^2))*Xca/(V^2);
pac=1.5;
prc=2;
Pta=.5+1.5;// total active power between E and C 
Ptr=Pr+Pl+2;// reactive power between E and C 
Xt=.05+.025;//total reactance beteween E an C 
Pl2=((2*2) + (2.4199^2));// loss (p.u)
Pat=200;
Prt=315.9;
pf=.5349;
mprintf("Total active power supplied by generator =%.0f MW\n",Pat);
mprintf("Total reactive power supplied by generator =%.1f MW \n",Prt);
mprintf("p.f of the generator =%.4f \n",pf);
