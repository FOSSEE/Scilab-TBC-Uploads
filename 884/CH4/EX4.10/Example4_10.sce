// Acid Base Titrations

clear;
clc;

printf("\t Example 4.10\n");

mKHP=0.5468;//mass of KHP, g
KHP=204.2;//mol mass of KHP, g

nKHP=mKHP/KHP;//moles of KHP

VNaOH=23.48;//volume of NaOH, mL
MNaOH=nKHP/VNaOH*1000;//molarity of NaOH sol, M


printf("\t the molarity of NaOH solution is : %4.3f M\n",MNaOH);

//End
