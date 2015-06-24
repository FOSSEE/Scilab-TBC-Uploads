//Chapter-1, Example 1.54, Page 61
//=============================================================================
clc;
clear;
//INPUT DATA
RAC=10;//Resistance in ohms
RCD=10;//resistance in ohms
RCF=50;//resistance in ohms
RDH=50;//resistance in ohms
RDF=30;//resistance in ohms
RHF=10;//resistance in ohms
//using star to delta conversion,the star point D is eliminated
//CALCULATIONS 
RCF1=((RCD*RDF)+(RDF*RDH)+(RDH*RCD))/(RDH);//by using star to delta conversion technique
RFH=((RCD*RDF)+(RDF*RDH)+(RDH*RCD))/(RCD);//by using star to delta conversion technique
RHC=((RCD*RDF)+(RDF*RDH)+(RDH*RCD))/(RDF);//by using star to delta conversion technique
RCF2=(RCF*RCF1)/(RCF+RCF1);
RCF=RCF2;//equivalent resistance of RCF in ohms
RHF1=(RHF*RFH)/(RHF+RFH);
RHF=RHF1;//equivalent resistance of RHF in ohms
RAB=(RAC)+(RHC*(RCF+RHF))/(RHC+RCF+RHF);//equivalent resistance of AB in ohms
//OUTPUT
mprintf("Thus equivalent resistance of AB is %f ohms",RAB);
//note:given final answer is wrong in textbook.Please check the calculations
 //=================================END OF PROGRAM==============================
