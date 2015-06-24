//Dalton's Law of Partial Pressures

clear;
clc;

printf("\t Example 5.14\n");

nNe=4.46;//moles of Ne
nXe=2.15;//moles of Xe
nAr=0.74;//moles of Ar
PT=2;//total pressure in atm
XNe=nNe/(nNe+nAr+nXe);//mole fraction of Ne
XAr=nAr/(nNe+nAr+nXe);//mole fraction of Ar
XXe=nXe/(nNe+nAr+nXe);//mole fraction of Xe
PNe=XNe*PT;//partial pressure of Ne
PAr=XAr*PT;//partial pressure of Ar
PXe=XXe*PT;//partial pressure of Xe

printf("\t the partial pressures of Ne, Ar and Xe are : %4.2f atm, %4.2f atm and %4.3f atm respectively\n",PNe,PAr,PXe);


//End
