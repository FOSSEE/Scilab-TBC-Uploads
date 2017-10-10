clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 11.4   Page 695 \n'); //Example 11.4
// Heat Transfer Rate and Fluid Outlet Temperatures

//Operating Conditions
Thi = 250+273    ;//[K] Hot Fluid intlet Temperature
Tci = 35+273    ;//[K] Cold Fluid intlet Temperature
mc = 1          ;//[kg/s] Cold Fluid flow rate
mh = 1.5        ;  //[kg/s] Hot Fluid flow rate
Uh = 100        ;//[W/m^2.K] Coefficient of heat transfer
Ah = 40         ; //[m^2] Area
//Table A.5 Water Properties T = 353 K
cph = 1000       ;       //[J/kg.K] Specific Heat
//Table A.6 Saturated water Liquid Properties Tc = 308 K
cpc = 4197        ;      //[J/kg.K] Specific Heat

Cc = mc*cpc;
Ch  = mh*cph;
Cmin = Ch;
Cmax = Cc;

NTU = Uh*Ah/Cmin;
ratio = Cmin/Cmax;

printf("\n As Ratio Cmin/Cmax = %.2f and Number of transfer units NTU = %.2f, It follows from figure 11.14 that e = .82",ratio,NTU);
e = 0.82;
qmax = Cmin*(Thi-Tci);
q = e*qmax;

//Equation 11.6b
Tco = q/(mc*cpc) + Tci;
//Equation 11.7b
Tho = -q/(mh*cph) + Thi;
printf("\n Heat Transfer Rate  = %.2e W \n Fluid Outlet Temperatures Hot Fluid (Tho) = %.1f degC    Cold Fluid (Tco) = %.1f degC",q,Tho-273,Tco-273);
//END