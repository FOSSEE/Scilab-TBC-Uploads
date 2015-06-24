
//Ex11_6

clc;

//Given:

// Relative biological effectiveness(RBE)
a7=10;// for alpha partical
a6=1;//for gamma radiations
tn=2.5;// for thermal neutrons
g=1;// for gamma radiation
rd=0.6;//radiation dose in gray
//Formulas
//1.The Rontgen equivalent mammal (REM)=RBE*rads
//2.The sievert is the SI unit for REM= RBE*grays
//3. 1 gray(Gy)=100 rads

//Solution:

// part (a) alpha particles
a1=a7*rd// biological efective dose in Sv
a2=a1*100;// biological efective dose in rem
printf("\n The biological efective dose for alpha particles in Sv is = %f",a1)
printf("\n The biological efective dose for alpha particles in rem is = %f",a2)

// part (b) thermal neutrons
tn1=tn*rd// biological efective dose in Sv
tn2=tn1*100;// biological efective dose in rem
printf("\n \n The biological efective dose for thermal neutrons in Sv is = %f",tn1)
printf("\n The biological efective dose for thermal neutrons in rem is = %f",tn2)

// part (c) gamma particles
g1=a6*rd// biological efective dose in Sv
g2=g1*100;// biological efective dose in rem
printf("\n \n The biological efective dose for gamma particles in Sv is = %f",g1)
printf("\n The biological efective dose for gamma particles in rem is = %f",g2)
