clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.20
// Page 155
printf("Example 4.20, Page 155 \n \n");

// solution

m1 = 1488.1 //kmol/h gas mix to reactor1 (basis)
m2 = m1*.0625 // CH3OH
m3 = m1-m2 // ambient air flow
m4 = m3/1.01772 // dry air flow rate
m5 = m3-m4 // moisture
m6 = m2*.99 // CH3OH conversion in R1
m7 = m2-m6 // unreacted CH3OH
//rxn i
m8 = m7*.9 // CH3OH reacted = HCHO produced = H2O produced
m9 = m8/2 // O2 consumed 
m10 = m6-m8 // CH3OH reacted in rxn ii to v
//rxn ii
m11 = m10*.71 // CH3OH reacted = CO2 produced
m12 = m11*1.5 // O2 consumed
m13 = 2*m11 // H2O produced
//rxn iii
m14 = m10*.08 // CH3OH reacted = CO produced
m15 = 2*m14 // H2 produced
//rxn iv
m16 = m10*.05 // Ch3OH reacted = CH4 produced
m17 = m16/2 // O2 produced
//rxn v
m18 = m10-m16-m14-m11 // CH3OH reacted
m19 = m18/2 // (CH3)2O = H2O produced

m20 = 287.87-m9-m12+m17 // O2 in R1 exit stream
m21 = m5+m8+m13+m19 // H2O in R1
m = m7+m8+m11+m14+m15+m16+m19+m20+1082.93+m21
// R2
// x kmol/h CH3OH is added b/w reactors
// (m7+x)/(m+x) = .084 solving it
x = 140.548 //[kmol/h]
m22 = x+m7 // CH3OH entering R2
m23 = m22*.99 //CH3OH reacted
m24 = m22-m23 // CH3OH unreacted
//rxn i
m25 = m23*.9 // CH3OH reacted = HCHO produced = H2O produced
m26 = m25/2 // O2 consumed
m27 = m23 - m25 // CH3OH reacted in rxn ii to v
//rxn ii
m28 = m27*.71 // CH3OH reacted = CO2 produced
m29 = m28*1.5 // O2 consumed
m30 = m28*2 // H2O produced
//rxn iii
m31 = m27*.08 // CH3OH reacted = CO produced
m32 = m31*2 // H2 produced
//rxn iv
m33 = m27*.05 // Ch3OH reacted = CH4 produced
m34 = m33/2 // O2 produced
//rxn v
m35 = m27-m28-m31-m33 // CH3OH reacted
m36 = m35/2 // (CH3)2O = H2O produced

m37 = m20 - m26-m29+m34 // O2 in R2 exit stream
m38 = m21+m25+m36 // H2O in R2
m39 = 92.07+m25 // HCHO in R2
m40 = m24+m39+m28+m31+m32+m33+m36+m37+m38+1082.93

m41 = m39*30 // kg/h   HCHO produced
m42 = m41/.37 // bottom sol floe rate
c = (m42-9030.4)*100/9030.4 // increase in capacity
printf("Increase in capacity = "+string(c)+" percent.")






