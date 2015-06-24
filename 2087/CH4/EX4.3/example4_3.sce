

//example 4.3
//calculate precipitation at x
clc;funcprot(0);
//given
pA=6.6;         //precipitation at A
pB=4.8;         //precpitation at B
pC=3.7;         //precipitation at C
nA=72.6;        //normal precipitation at A
nB=51.8;        //normal precipitation at B
nC=38.2;        //normal precipitation at C
nX=65.6;        //normal precipitation at X

pX=(nX*pA/nA+nX*pB/nB+nX*pC/nC)/3;
pX=round(pX*100)/100;
mprintf("precipitation at x=%f cm.",pX);
