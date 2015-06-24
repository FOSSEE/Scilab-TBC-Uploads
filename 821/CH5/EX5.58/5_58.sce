Kf=1.86;//Kf for water//
m=0.1;//no. of moles of organic mono carboxilic acid//
dTf=Kf*m;//Theoritical change in temperature//
printf('Theoritical change in temperature=dTf=%f',dTf);
dTobs=0.220;//Observed change in temperature//
i=dTobs/dTf;
printf('\nSince dTobs is greater than dTf ionization must have occurred in aqueous solution.\nAn organic monobasic acid RCOOH ionizes as RCOOH = RCOO- + H+.');
a=i-1;//degree of ionization//
printf('\nDegree of ionization=a=%f',a);
printf('\nIf the acid dissolved as such in its molecular form as species dTthr=5.12*0.1=0.512,dTobs=0.265.');
printf('\nThis value is nearly half the expected value,suggesting that the molecule exists as associated molecules in solution.');
i1=0.265/0.512;
a1=2*(1-i1);
printf('\nThe acid is demerized to the extent of a1=96.500000percent.')
