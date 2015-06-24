//Chapter-1, Example 1.58, Page 68
//=============================================================================
clc;
clear;
//INPUT DATA
RAB=1;//Resistance in ohms
RAD=1;//Resistance in ohms
RDC=2;//Resistance in ohms
RCB=1;//Resistance in ohms
RAC=1;//Resistance in ohms
//delta DAC has been converted to star DAC where RDN=0.5 ohms,RNA=0.25 ohms,RNC=0.5 ohms
//CALCULATIONS 
RDN=0.5;
RNA=0.25;
RNC=0.5
RBD=((RDN)+(((RNA+RAB)*(RNC+RCB))/(RNA+RAB+RNC+RCB)));//equivalent resistance across BD
//OUTPUT
mprintf("Thus equivalent resistance across BD is %1.2f ohms",RBD);
 //=================================END OF PROGRAM==============================


