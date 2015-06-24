clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.10
// Page 128
printf("Example 4.10, Page 128 \n \n");

// solution

F1 = 4000 //kg/h methanol (basis)
F2 = F1/32 //kmol/h
F3 = F2/.084 //kmol/h gaseous mix flowrate
F4 = F2-F3 //kmol/h flow of wet air
n1 = .011*29/18 // kmol/kmol dry air 
F5 = F4/(1+n1) // kmol/h dry air flowrate
O2 = F5*.21 //kmol/h
N2 = F5-O2 //kmol/h
Mreacted1 = F2*.99 //kmol/h
Munreacted1 = F2-Mreacted1 //kmol/h
// reaction (i)
Mreacted2 = Mreacted1*.9 //kmol/h
HCHOproduced1 = 111.375
O2consumed1 = 111.375/2
H2Oproduced1 = 111.375
// for rxn ii to iv
Mconsumed = Mreacted1*.1
//rxn (ii)
CH3OHreacted1 = Mconsumed*.71
O2consumed2 = 8.786*1.5
CO2produced = 8.786
H2Oproduced2 = 8.786*2
//rxn(iii)
CH3OHreacted2 = 12.375*.08
COproduced = .99
H2produced = 2*.99
//rxn(iv)
CH3OHreacted3 = 12.375*.05
CH4produced = .619
O2produced = .619/2
//rxn(v)
CH3OHreacted4 = 12.375-CH3OHreacted1-CH3OHreacted2-CH3OHreacted3
DMEproduced = 1.98/2
H2Oproduced3 = 1.98/2
O2 = 281.27-O2consumed1-O2consumed2+O2produced
H2O = 23.73+H2Oproduced1+H2Oproduced2+H2Oproduced3
printf("Composition of exit gas stream : \n \n CH3OH = "+string(Munreacted1)+" \n HCHO = "+string(HCHOproduced1)+" \n CO2 = "+string(CO2produced)+" \n CO = "+string(COproduced)+" \n H2 = "+string(H2produced)+" \n CH4 = "+string(CH4produced)+" \n (CH3)2O = "+string(DMEproduced)+" \n O2 = "+string(O2)+" \n N2 = "+string(N2)+" \n H2O = "+string(H2O)+".")










