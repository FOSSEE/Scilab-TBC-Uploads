//CHAPTER 6- MAGNETIC CIRCUITS
//Example 5

clc;
disp("CHAPTER 6");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
li=100/100;                    //length of iron part in m  
ls=200/100;                    //length of steel part in m 
lg=1/100;                      //length of air gap in m 
ai=20/10000;                   //cross-sectional area of iron in m^2
as=10/10000;                   //cross-sectional area of steel in m^2
ag=20/10000;                   //cross-sectional area of air-gap in m^2
muRi=300;                      //relative permeability of iron
muRs=900;                      //relative permeability of steel
muRg=1;                        //relative permeability of air
N=170;                         //number of turns 
phi=9000*10^(-8);              //flux in Wb (1 line = 10^(-8) Wb)
lkg=1.2;                       //leakage coefficient
mu0=4*%pi*10^(-7);             //absolute permeability in Henry/m

//SOLUTION
rg=lg/(mu0*muRg*ag);           
mg=rg*phi;
mg=round(mg);                  //to round off the value
disp(sprintf("MMF of the air gap is %d AT",mg));

ri=li/(mu0*muRi*ai);           //reluctance of iron paths
mi=lkg*ri*phi;                 //MMF for iron path
mi=round(mi);          
disp(sprintf("MMF of iron is %d AT",mi));

rs=ls/(mu0*muRs*as);           //reluctance of steel paths
ms=lkg*rs*phi;                 //MMF for steel path
ms=round(ms);
disp(sprintf("MMF of cast steel is %d AT",ms));

totMMF=mg+mi+ms;
I=totMMF/N;
disp(sprintf("Current through the coil is %f A",I));

//END

