clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.12
// Page 136
printf("Example 4.12, Page 136 \n \n");

// solution

// basis 100kg mixed charge = 75 kg pyrite + 25kg ZnS
// pyrites
m1 = 75*.92 //[kg]  FeS2
G1 = 75-m1 // gangue
// 4FeS2 + 11O2 = 2Fe2O3 + 8SO2
// 4FeS2 + 15O2 = 2Fe2O3 + 8SO3
//Zn ore
m2 = 25*.68 // ZnS
I1 = 25-m2 // inerts
// 2ZnS + 3 O2 = 2 ZnO + 2 SO2
I2 = I1+6 // total inerts
// new basis : 100kg cinder 
m3 = 3.5*.7 // S as SO3
m4 = 3.5-m3 // S as FeS2
m5 = 100-m3-m4 // S free cinder
m6 = (81.4/97.4)*17 // ZnO
// FeS2 reacted = x
// (FeS2 in cinder/S free cinder) = (69-x)/(28.2+.667x) = 1.969/91.906
// solving this we get
x = 67.43 //kg
m7 = m6 + .667*x + 14 // S free cinder
m8 = 69-x // FeS2 in cinder
m9 = 6.125*m7/m5 // SO3
m10 = .667*x // Fe2O3
m11 = m6+m10+m8+m9+I2
printf("(a) \n \n Total cinder produced = "+string(m11)+"kg \n Composition of cinder : \n ZnO = "+string(m6)+"kg \n Fe2O3 = "+string(m10)+"kg \n S as FeS2 = "+string(m8)+"kg \n S as SO3 = "+string(m9)+"kg \n inerts = "+string(I2)+"kg \n \n \n(b) \n \n")
S1 = (64/120)*69 + (32/97.4)*17 //[kg]  S charged to burner
S2 = .035*79.63 // S in cinder
p = S2*100/S1
printf("percentage of S left in cinder = "+string(p)+"")



