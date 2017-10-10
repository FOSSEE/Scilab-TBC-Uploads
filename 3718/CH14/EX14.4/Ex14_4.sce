//Chapter 14: Water Treatment
//Problem: 4
clc;

//Initialisation of Variables
i1 = 180     //in mg/L for CaCl2
i2 = 210     //in mg/L for Ca(NO3)2
i3 = 123     //in mg/L for MgSO4
i4 = 90      //in mg/L for Mg(HCO3)2

//Solution
i1_req = i1 * 100 / 111.
i2_req = i2 * 100 / 164.
i3_req = i3 * 100 / 120.
i4_req = i4 * 100 / 146.

lime_req = 74 / 100. * (2 * i4_req + i3_req) * 100 / 70. * 10000 //where lime_req is the required value
alime_req=lime_req / (10 ** 6) //where alime_req is the approximated value
soda_req = 106 / 100. * (i1_req + i3_req + i2_req) * 100 / 80. * 10000 //where soda_req is the required value
asoda_req=soda_req / (10 ** 6) //where asoda_req is the approximated value

mprintf("Lime Required : %.1e mg ~ %.1f Kg\n",lime_req,alime_req)
mprintf(" Soda Required : %.1e mg ~ %.1f Kg",soda_req,asoda_req)
