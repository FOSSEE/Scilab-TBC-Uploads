clc;
warning("off");
printf("\n\n example7.22 - pg321");
// given
To=545.67;  //[degR] -  air temperature at beach level
betaa=-0.00357;  //[degR/ft] - constant
R=1545;  //[Torr*ft^3/degR*mole] - gas constant
M=29;
deltaz=25000;  //[ft]
// using the equation ln(p/po)=((M)/(R*betaa))*ln(To/(To+betaa*deltaz)
p=po*exp(((M)/(R*betaa))*log(To/(To+betaa*deltaz)));
printf("\n\n p=%fTorr",p);
// using the equation T=To+betaa*deltaz
T=To+betaa*deltaz;
printf("\n\n T=%fdegR",T);
