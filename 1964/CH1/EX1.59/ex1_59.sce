//Chapter-1, Example 1.59, Page 69
//=============================================================================
clc;
clear;
//INPUT DATA
RAB=9;//Resistance in ohms
RBC=1;//Resistance in ohms
RCA=1.5;//Resistance in ohms
RAD=6;//Resistance in ohms
RBD=4;//Resistance in ohms
RCD=3;//Resistance in ohms
//star ABC has been converted to delta AnBnCn where RABn=18 ohms,RBCn=9 ohms,RCAn=13.5 ohms
//CALCULATIONS 
RABn=18;
RBCn=9;
RCAn=13.5;
RAB1=((RAB*RABn)/(RAB+RABn));//equivalent resistance across AB
RBC1=((RBC*RBCn)/(RBC+RBCn));//equivalent resistance across BC
RAC1=((RCA*RCAn)/(RCA+RCAn));//equivalent resistance across AC
//there are two parallel paths across points A and B.
//(a)one directly from A to B having a resistance of 6 ohms and
//(b)The other via C having a total resistance 
RBA=((RBC1+RAC1)*(RAB1))/(RBC1+RAC1+RAB1);//final equivalent resistance across AB
RCB=((RAC1+RAB1)*(RBC1))/(RAC1+RAB1+RBC1);//final equivalent resistance across BC
RCA=((RAB1+RBC1)*(RAC1))/(RAB1+RBC1+RAC1);//final equivalent resistance across AC
//OUTPUT
mprintf("Thus final equivalent resistance across AB,BC and CA are %1.2f ohms,%1.2f ohms,%1.2f ohms",RBA,RCB,RCA);
//note:answer given for RCA is wrong.Please check the calculations
 //=================================END OF PROGRAM==============================


