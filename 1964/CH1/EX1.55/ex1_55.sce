//Chapter-1, Example 1.55, Page 62
//=============================================================================
clc;
clear;
//INPUT DATA
RAB=1;//Resistance in ohms
RBE=2;//resistance in ohms
RED=3;//resistance in ohms
REF=3;//resistance in ohms
RDF=3;//resistance in ohms
RAD=2;//resistance in ohms
RAC=1;//resistance in ohms
RBC=1;//resistance in ohms
RFC=2;//resistance in ohms
//CALCULATIONS 
//Delta DEF is converted into equivalent star where RDN=REN=RFN=1 ohm
//series branches of inner star network are added
//Star ABCN is converted to equivalent delta
RDN=1;
REN=RDN;
RFN=REN;
RAN=RAD+RDN;RBN=RBE+REN;RCN=RFC+RFN
RAB1=((RAN*RBN)+(RBN*RCN)+(RCN*RAN))/(RCN);//by using star to delta conversion technique
RBC1=((RAN*RBN)+(RBN*RCN)+(RCN*RAN))/(RAN);//by using star to delta conversion technique
RCA1=((RAN*RBN)+(RBN*RCN)+(RCN*RAN))/(RBN);//by using star to delta conversion technique
//parallel resistances in each branch are converted to single resistance
RAB2=(RAB*RAB1)/(RAB+RAB1);
RAB=RAB2;//equivalent resistance of RAB in ohms
RBC2=(RBC*RBC1)/(RBC+RBC1);
RBC=RBC2;//equivalent resistance of RBC in ohms
RCA2=(RAC*RCA1)/(RAC+RCA1);
RCA3=((RCA2)*(RAB+RBC))/(RBC+RAB+RCA2);
RCA=RCA3;
//OUTPUT
mprintf("Thus equivalent resistance of CA is %1.1f ohms",RCA);
//TO FIND EQUIVALENT RESISTANCE BETWEEN DF
//===================================================================================
//node A is eliminated using star to delta conversion
RBC=(RAB*RAD)+(RAD*RAC)+(RAC*RAB)/(RAD);//by using star to delta conversion technique
RCD=(RAB*RAD)+(RAD*RAC)+(RAC*RAB)/(RAB);//by using star to delta conversion technique
//node C is eliminated using star to delta conversion
RDB=(0.72*5)+(5*2)+(2*0.72)/2;
RBF1=(0.72*5)+(5*2)+(2*0.72)/5;
RFD=(0.72*5)+(5*2)+(2*0.72)/0.72;
//parallel branches between nodes B and D and nodes D and F are reduced as
RBD=(RDB*5)/(RDB+5);
RDF=(RFD*3)/(RFD+3);
//node E is eliminated using star to delta conversion technique
RBF=((2*3)+(3*3)+(3*2))/3;
RFD=((2*3)+(3*3)+(3*2))/2;
RDB=((2*3)+(3*3)+(3*2))/3;
RDF1=4.2;//(R'=RDB+RDF)
RDF=((RDF1)*(RDF1/2))/(RDF1+(RDF1/2));
//OUTPUT
mprintf("\n Thus equivalent resistance of DF is %1.1f ohms",RDF);
 //=================================END OF PROGRAM==============================
