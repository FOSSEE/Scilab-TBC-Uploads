//chapter 6
//horn antenna
printf("\n");
Ae=10;
del=0.2;
p=Ae^2/(8*del);
del1=0.375;
Thetae=2*atan((Ae/(2*p)))*180/(%pi);//flare angle
Thetah=2*acos(p/(p+del1))*180/(%pi);
Ah=2*p*tan(((Thetah*(%pi)/180)/2));
printf(" the length is %gm",p);
printf("\n the angle ThetaE is %g degree",Thetae);
printf("\n the angle ThetaH is %g degree",Thetah);
printf("\n the H plane aperture is %g",Ah);
HPBWH=67/Ah;
HPBWE=56/Ae;
Ddb=10*log10((7.5*Ae*Ah));
printf("\n the HPBWE is %g degree",HPBWE);
printf("\n the HPBWH is %g degree",HPBWH);
printf("\n the Directive gain in db is %gdb",Ddb);   
