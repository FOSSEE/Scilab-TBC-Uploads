//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 5, Page 116
//Title: Calculation of different concentrations in vaporization process
//=============================================================================
clear
clc

//INPUT
P = [750 760]; //Barometric pressure and standard pressure in mm Hg
PS = [116 185]; //Vapor pressure of acetone at 10 degree C and 20 degree C in mm Hg
T = [30 25 0]; //Temperature of nitrogen entering evaporator and standard temperature in degree C
n = 1; //lb mole of nitrogen (Basis of calculation in part(c),part(d) and part(e))
MW = 58; //Molecualar weight of acetone in lb/lb mole

//CALCULATIONS
//Part(a)
//Entering gases
PP1 = PS(1); //Partial pressure of acetone in mm Hg
PP2 = P(1)-PP1; //Partial pressure of nitrogen in mm Hg
n1 = PP1/PP2; //Moles of acetone per mole of nitrogen
//leaving gases
PP3 = PS(2); //Partial pressure of acetone in mm Hg
PP4 = P(1)-PS(2); //Partial pressure of nitrogen in mm Hg
n2 = PP3/PP4; //Moles of acetone per mole of nitrogen
//Part(b)
n3 = n2-n1; //lb mole of acetone evaporated
//Part(c)
Tkelvin = T+273; //Converting temperature fron degree C to kelvin
n4 = n+n1; //lb mole of total gas entering the process
v1 = n4*359*(P(2)/P(1))*(Tkelvin(1)/Tkelvin(3)); //Volume of gas entering in cu ft
m1 = MW*n3; //Weight of acetone evaporated
m2 = m1*1000/v1; //lb of acetone evaporated per 1000 cu ft of gas entering
//Part(d)
n5 = n+n2; //lb mole of total gas leaving the process
v2 = n5*359*(P(2)/P(1))*(Tkelvin(2)/Tkelvin(3)); //Volume of gas leaving in cu ft
v3 = v2*1000/v1; //cu ft of gas leaving per 1000 cu ft of gas entering the process

//OUTPUT
// Console output
mprintf('\n (a) Vapor concentration of gases entering and leaving = %4.3f and %4.3f respectively',n1,n2);
mprintf('\n (b) Moles of acetone evaporated = %4.3f lb moles',n3);
mprintf('\n (c) Weight of acetone evaporated per 1000 cu ft of gas entering = %3.1f lb',m2);
mprintf('\n (d) Volume of gas leaving per 1000 cu ft of gas entering = %4.0f cu ft',v3);

// File output
fd= mopen('.\Chapter5_Example5_Output.txt','w');
mfprintf(fd,'\n (a) Vapor concentration of gases entering and leaving = %4.3f and %4.3f respectively',n1,n2);
mfprintf(fd,'\n (b) Moles of acetone evaporated = %4.3f lb moles',n3);
mfprintf(fd,'\n (c) Weight of acetone evaporated per 1000 cu ft of gas entering = %3.1f lb',m2);
mfprintf(fd,'\n (d) Volume of gas leaving per 1000 cu ft of gas entering = %4.0f cu ft',v3);
mclose(fd);

//===========================END OF PROGRAM====================================
