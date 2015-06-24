clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.38
// Page 279
printf("Example 5.38, Page 279 \n \n");

// solution

F = 100  // kmol/h    feed rate of ethylene
Econ = .99*F
Econ1 = Econ*.998
Econ2 = Econ-Econ1
Cl2con = Econ1+2*Econ2
Cl2in = F*1.1
Cl2s3 = Cl2in-Cl2con
HCls3 = Econ2
TCEp = Econ2
EDCp = Econ1
nC2H4 = 1
T = 328.15
pv1 = exp(4.58518-1521.789/(T-24.67))  // bar
pv2 = exp(4.06974-1310.297/(T-64.41))  // bar
xEDC = Econ1/(Econ1+Econ2)
xTEC = 1-xEDC
pEDC = 37.2*xEDC
pTEC = 12.64*xTEC
pCl2HClC2H4 = 1.6*100-pEDC-pTEC
yEDC = pEDC/160
yTEC = pTEC/160
nt = (Cl2s3+Econ2+1)*160/pCl2HClC2H4
nEDC = yEDC*nt
nTEC = yTEC*nt
printf(" Compositions of gas streams : \n \n Component           Stream 3          Stream 5          Stream 4          Stream 6 \n Cl2                 "+string(Cl2s3)+"            "+string(Cl2s3)+" \n HCl                 "+string(HCls3)+"             "+string(HCls3)+" \n C2H4                "+string(nC2H4)+"                 "+string(nC2H4)+" \n EDC                 "+string(nEDC)+"         0.2355            3.3947            98.5665 \n TEC                 "+string(nTEC)+"         Nil               "+string(nTEC)+"         "+string(TCEp)+" \n \n ")
fi1 = (10.802*33.9+.198*29.1+1*43.6+3.6302*17.4+.0025*85.3)*(328.15-273.15)
fi2 = 35.053*1000*3.3947+39.58*1000*.0025
fi3 = (3.3947*129.4+.0025*144.4)*55/2
fi = fi1+ fi2+ fi3  // kJ/h
printf(" Heavy duty of Overhead condenser = "+string(fi)+" kJ/h. \n \n ")
fi5 = (100*43.6+110*33.9)*(328.15-273.15)
fi6 = 3.6302*1000*33.6+.0025*1000*38.166
fi7 = (98.5665*129.4+.1988*144.4)*(328.15-273.15)
fi8 = 216845.5*98.802+392394.5*.198
ficol = fi5+fi8-fi1-fi6-fi7
printf(" Heavy duty of external cooler = "+string(ficol)+" kJ/h.")
