//clc()
m = 100;//kg
Pin1 = 40;//% ( tannin )
Pin2 = 5;//% ( moisture )
Pin3 = 23;//% ( soluble non tannin material )
Pin4 = 100 - Pin1 - Pin2 - Pin3;//% ( insoluble lignin )
// since, lignin is insoluble, all of it will be present in the residue
Pout1 = 3;//%
Pout2 = 50;//%
Pout3 = 1;//%
Pout4 = 100 - Pout1 - Pout2 - Pout3;
//let W be the mass of residue, then we get
W = Pin4 * m / Pout4;
Ptannin = W * Pout1 * 100 / (m * Pin1);
disp("%",Ptannin,"Percent of original tannin unextracted = ")