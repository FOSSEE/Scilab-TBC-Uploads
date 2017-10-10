//Example 8.3//

a=25*10^-6;// m // length of surface crack
// (a) For Sic,
b=3;//MPa sqrt(m) //fracture toughness
s1=b/(sqrt(%pi*a))
mprintf("s1 = %i MPa",s1)
// (b) For PSZ,
c=9;//MPa sqrt(m)// fracture toughness
s2=c/(sqrt(%pi*a))
mprintf("\n s2 = %i MPa   (Answer calculated in textbook is wrong)",s2)
