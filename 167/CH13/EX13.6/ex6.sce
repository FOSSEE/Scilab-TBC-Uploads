//example 6
//obtaining fresh water from sea water
clear
clc
Mw=18.0 //molar mass of water kg/kmol
Ms=58.44 //molar mass of salt kg/kmol
Rw=0.4615 //gas constant of pure water kJ/kg-K
mfs=0.0348 //mass fraction of salt
mfw=1-mfs //mass fraction of water
Mm=1/((mfs/Ms)+(mfw/Mw)) //molar mass of mixture kg/kmol
yw=mfw*Mm/Mw //mole fraction of water
ys=1-yw //mole fraction of salt
To=288.15 //Temp. of Seawater in kelvins
Ru=8.314 //Universal Gas constant in kJ/kmol-K
dm=1028 //density of seawater in kg/m^3
wminin=-Ru*To*(yw*log(yw)+ys*log(ys)) //minimum work input required to separate 1 kg of seawater completely into pure water and pure salts kJ/kmol
Wminin=wminin/Mm //minimum work input in kJ/kg seawater
wminin2=Rw*To*log(1/yw) //minimum work input required to produce 1 kg of fresh water from seawater in kJ/kg fresh water
Pm=dm*Rw*To*log(1/yw) //the minimum gauge pressure that the seawater must be raised if fresh water is to be obtained by reverse osmosis using semipermeable membranes in kPa
printf("\n Hence, the mole fraction of water in the seawater is = %.4f. \n",yw);
printf("\n Hence, the mole fraction of salt in the seawater is = %.2f percentage. \n",ys*100);
printf("\n Hence, the minimum work input required to separate 1 kg of seawater completely into pure water and pure salts is = %.2f kJ/kg sea water. \n",Wminin);
printf("\n Hence, the minimum work input required to produce 1 kg of fresh water from seawater kJ/kg fresh water is = %.2f kJ/kg fresh water. \n",wminin2);
printf("\n Hence, the the minimum gauge pressure that the seawater must be raised if fresh water is to be obtained by reverse osmosis using semipermeable membranes is = %.0f kPa. \n",Pm);