

//example 4.40
//calculate precipitation at x
clc;funcprot(0);
//given
pA=75;         //precipitation at A
pB=58;         //precpitation at B
pC=47;         //precipitation at C
nA=826;        //normal precipitation at A
nB=618;        //normal precipitation at B
nC=482;        //normal precipitation at C
nX=757;        //normal precipitation at X

pX=(nX*pA/nA+nX*pB/nB+nX*pC/nC)/3;
pX=round(pX*10)/10;
mprintf("precipitation at x=%f cm.",pX);

