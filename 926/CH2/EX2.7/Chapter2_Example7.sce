//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-2, Illustration 7, Page 39
//Title: Calculation of composition and molality
//=============================================================================
clear
clc

//INPUT
V = 1000; //Total volume of solution in cc
rho = 1.148; //Density of solution in g/cc
w1 = 230; //Weight of NaCl in solution in g
MW = [58.5,18.020]; //Molecular weight of NaCl and water respectively in g/g mole
rho_water = .998; //Density of water at given temperature in g/cc

//CALCULATIONS
W = V*rho; //Total weight of solution in g
w2 = W-w1; //Weight of water in solution in g
n1 = w1/MW(1); //To calculate no of moles of NaCl in g mole
n2 = w2/MW(2); //To calculate no of moles of water in g mole
N= n1+n2; //Total no of moles in g mole
//Part(a)
m1 = w1*100/W; //To compute weight percent of NaCl
m2 = w2*100/W; //To compute weight percent of Water
//part(b)
v1 = w2/rho_water; //Volume of pure water in cc
V1 = v1*100/V; //To compute volume percent of water
//part(c)
x1 = n1*100/N; //To calculate mole % of NaCl
x2 = n2*100/N; //To calculate mole % of water
//part(d)
a1 = n1; //To calculate no of atoms of sodium in g atom
a2 = n1; //To calculate no of atoms of chlorine in g atom
a3 = 2*n2; //To calculate no of atoms of hydrogen in g atom
a4 = n2; //To calculate no of atoms of oxygen in g atom
A = a1+a2+a3+a4; //To calculate total no of atoms
A1 = a1*100/A; //To calculate atomic percent of sodium
A2 = a2*100/A; //To calculate atomic percent of chlorine
A3 = a3*100/A; //To calculate atomic percent of hydrogen
A4 = a4*100/A; //To calculate atomic percent of oxygen
//part(e)
m = n1*V/w2; //Molality of solution in lb mole NaCl/1000 lb H2O
//part(f)
M = w1/w2; //lb of NaCl per lb H20

//OUTPUT
mprintf('\n(a) Weight percent of NaCl and water are %3.0f and %3.0f respectively',m1,m2);
mprintf('\n(b) Volumetric percent of water is %3.0f',V1);
mprintf('\n(c) Mole percent of NaCl and water are %3.2f and %3.1f respectively',x1,x2);
mprintf('\n(d) Atomic percent of sodium,chlorine,hydrogen and oxygen are %3.2f, %3.2f, %4.1f and %3.1f respectively',A1,A2,A3,A4);
mprintf('\n(e) Molality of the solution is %3.2f lb mole of NaCl/1000 lb H2O',m);
mprintf('\n(f) lb of NaCl per lb of water is %4.3f',M);

//=================================END OF PROGRAM==============================