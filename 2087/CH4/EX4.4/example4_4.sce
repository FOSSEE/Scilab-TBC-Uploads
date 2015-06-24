

//example 4.4
//calculate precipitation at A by inverse distance method
clc;funcprot(0);
//given
pB=74;         //precipitation at B
pC=88;         //precpitation at C
pD=71;         //precipitation at D
pE=80;         //precipitation at E
Bx=9;By=6;
Cx=12;Cy=-9;
Dx=-11;Dy=-6;
Ex=-7;Ey=7;
Ax=0;Ay=0;
Db=(Bx^2+By^2);
Dc=(Cx^2+Cy^2);
Dd=(Dx^2+Dy^2);
De=(Ex^2+Ey^2);
Wb=1/Db;
Wc=1/Dc;
Wd=1/Dd;
We=1/De;
s=pB*Wb+pC*Wc+pD*Wd+pE*We;
pA=s/(Wb+Wc+Wd+We);
pA=round(pA*10)/10;
mprintf("precipitation at A=%f mm.",pA);
