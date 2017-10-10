//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 12, Page 65
//Title: Calculation of percentage composition by volume
//=============================================================================
clear
clc

//INPUT
n = 1; //Total no moles of NH3 in lb mole
v = 100; //Volume of NH3 entering in cu ft
a = [1,2,1,1]; //Stoichiometric coefficients of NH3, O2, HNO3 and H2O in overall reaction 
b = [4,5,6,4];//Stoichiometric coefficients of NH3, O2, HNO3 and H2O in reaction 1
a1 = .21; //lb moles of O2 in 1 lb mole of air
b1 = .79; //lb moles of N2 in 1 lb mole of air
a2 = .2; //Amount of excess O2
T = [20,700]; //Temperature at which gases enters the process and leave the catalyzer in degree C
P = [755,743]; //Pressure at which gases enters the process and leaves the catalyzer in mm Hg
T2 = 273; //Temperature at standard conditions in K
P2 = 760; //Pressure at standard conditions in mm Hg
V = 359; //Volume at standard conditons in cu ft
N = .85; //lb moles of NH3 oxidised in catalyzer
c = .9; //Nitric oxide entering the tower oxidised to Nitric acid
MW = 63; //Molecular weight of HNO3 in lb/lb mole

//CALCULATIONS
//part(a)
T1 = T(1)+273;
T3 = T(2)+273;
n1 = a(2)*n; //O2 required in lb moles
n2 = n1*(n+a2); //O2 supplied in lb moles
n3 = n2/a1; //Air supplied in lb moles
v1 = V*(T1/T2)*(P2/P(1)); //Volume of NH3 in cu ft
v2 = n3*v1; //Volume of air supplied
v3 = v2*v/v1; //Volume of air per 100 ft of NH3 in cu ft
//part(b)
n4 = b1*n3; //N2 present in air in lb moles
n5 = n3+n; //Total lb moles of gas entering the catalyzer
x1 = n*100/n5; //Composition of NH3 by volume %
x2 = n2*100/n5; //Composition of O2 by volume %
x3 = n4*100/n5; //Composition of N2 by volume %
//Part(c)
n6 = n - N; //lb moles of NH3 leaving catalyzer
n7 = b(2)*N/b(1); //lb moles of O2 consumed in catalyzer
n8 = n2 - n7; //lb moles of O2 leaving catalyzer
n9 = b(4)*N/b(1); //lb moles of NO formed in catalyzer
n10 = b(3)*n9/b(4); //lb moles of H2O formed in catalyzer
N1 = n4+n6+n8+n9+n10; //lb moles of total quantity of gas leaving catalyzer
y1 = n9*100/N1; //Composition of NO by volume %
y2 = n10*100/N1; //Composition of H2O by volume %
y3 = n6*100/N1; //Composition of NH3 by volume %
y4 = n8*100/N1; //Composition of O2 by volume %
y5 = n4*100/N1; //Composition of N2 by volume %
//part(d)
N2 = n*v/v1; //lb moles of NH3 per 100 cu ft
N3 = N1*N2; //lb moles of gas leaving catalyzer
v4 = N3*V; //Volume at standard conditions of gas leaving catalyzer in cu ft
v5 = v4*(P2/P(2))*(T3/T2); //Volume of gas laeving catalyzer per 100 cu ft NH3 entering in cu ft
//part(e)
N4 = N2*n9; //lb moles of NO produced in catalyzer
N5 = N4*c; //lb moles of NO oxidised in tower
W = N5*MW; //Weight of HNO3 formed in lb

//OUTPUT
mprintf('\n (a) Volume of air per %3.0f cu ft NH3 entering is %4.0f cu ft',v,v3);
mprintf('\n (b) Percentage composition by volume of gases entering catalyzer:- \n    NH3 = %2.1f \n    O2 = %3.1f \n    N2 = %3.1f',x1,x2,x3);
mprintf('\n (c) Percentage composition by volume of gases leaving catalyzer:- \n    NO = %2.1f \n    H2O = %3.1f \n    NH3 = %2.1f \n    O2 = %3.1f \n    N2 = %3.1f',y1,y2,y3,y4,y5);
mprintf('\n (d) Volume of gases leaving catalyzer per %3.0f cu ft of NH3 entering is %4.0f cu ft',v,v5);
mprintf('\n (e) Weight of HNO3 produced per %3.0f cu ft of NH3 entering is %3.1f lb',v,W);

//========================END OF PROGRAM======================================