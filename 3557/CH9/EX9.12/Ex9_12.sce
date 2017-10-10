//Example 9.12//

Al2O3=1;// solid composition
SiO2=2; // solid composition
molp=(Al2O3/(Al2O3+SiO2))*100
mprintf("molp = %f  percent",molp)
xm=60;//mol % //composition of mullite
x=33.3;//mol% // x is overall comosition
xs=0;//mol % //composition of SiO2
mols=(xm-x)/(xm-xs)*100
mprintf("\nmols = %f  mol percent ",mols)
molm=(x-xs)/(xm-xs)*100
mprintf("\nmolm = %f mol  percent",molm)
