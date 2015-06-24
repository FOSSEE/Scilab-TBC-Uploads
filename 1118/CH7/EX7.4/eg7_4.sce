clear;
//clc();

d_ab=3;
d_bc=4;
d_ca=5;
r=0.015;

d_aa=r*exp(-0.25);
d_bb=r*exp(-0.25);
d_cc=r*exp(-0.25);

la=.2*(log([sqrt(d_ab*d_ca)/d_aa]) + %i*0.866*log([d_ab/d_ca]));

lb=2*(log([sqrt(d_ab*d_bc)/d_bb])/10 + %i*0.866*log([d_bc/d_ab])/10);

lc=2*(log([sqrt(d_bc*d_ca)/d_cc])/10 + %i*0.866*log([d_ca/d_bc])/10); 

lav=(la +lb + lc)/3;
printf("\n the average inductance is:  %f mH/km\n",lav);

