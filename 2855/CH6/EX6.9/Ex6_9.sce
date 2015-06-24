//chapter 6
//page no160
//exa 6_9
//given
clear;clc;
Ibias=15;       //in mA  assumption
Ild=35;         //in mA
Rld=50;         //in ohm
Ildi=100;         //in mA
Ilde=50;         //in mA
Imod=(Ildi+Ilde)/Ildi*35;  //mA
printf("Total modulation current is \nImod=%.2f mA\n",Imod);
Ildq=1.2/100*10^3;            //in mA  
printf("The current complementary output is \nIldq=%.1f mA\n",Ildq);
Vld=-1.2-Rld*(Ibias+Ild)*10^-3;       //optical high
printf("The laser voltage for optical high is \nVld=%.2f V\n",Vld);
Vld=-1.2-Rld*(Ibias)*10^-3;           //optical dark
printf("The laser voltage for optical dark is \nVld=%.2f V\n",Vld);
Vldq=-Ild*10^-3*Rld;
printf("The laser voltage at complimentary o/p is \nVldq=%.2f V\n",Vldq);
Rchock=5;           //in Ohm
Vchock=-Rchock*Ibias*10^-3;
printf("\nVchock=%.3f V\n",Vchock);
Vbias=0.5*(-3.7+Vld)+Vchock;
printf("\nVbias=%.1f V\n",Vbias);

//(i) Pdvee1
Pdvcc=5*2.5;        //in mW
printf("\nPdvcc=%.1f mW\n",Pdvcc);
Pdvee1=4.5*80;        //in mW
printf("\nPdvee1=%.0f mW\n",Pdvee1);
//(ii) Pdvee2
Pdvee2=6*160;        //in mW
printf("\nPdvee2=%.0f mW\n",Pdvee2);
//(iii) PdLD
PdLD=0.5*(3.75*50);        //in mW
printf("\nPdLD=%.2f mW\n",PdLD);
//(iv) PdLQ
PdLDQ=0.5*abs(Vld)*50;        //in mW
printf("\nPdLDQ=%.2f mW\n",PdLDQ);
//(v) PdLDQ
Pdbias=abs(Vbias)*Ibias;        //in mW
printf("\nPdbias=%.1f mW\n",Pdbias);
//PT
PT=Pdvcc+Pdvee1+Pdvee2-[PdLD+PdLDQ+Pdbias];
printf("\nTotal power dissipation (PT)=%.1f mW\n",PT);
