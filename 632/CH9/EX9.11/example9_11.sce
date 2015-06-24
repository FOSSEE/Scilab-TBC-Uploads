//clc()
F = 100;//kg
//F - feed, R - overflow, U - underflow, S - solvent
//F + S = U + R ( Total balance )
Poil1 = 49;//% ( 1 - feed )
Ppulp1 = 40;//%
Psalts1 = 3;//%
Pwater = 100 - Poil1 - Ppulp1 - Psalts1;
Phexane2 = 25;//%(2 - underflow)
Psalts2 = 2.5;//%
Poil2 = 15;//%
Pwater2 = 7.5;//%
Ppulp2 = 100 - Phexane2 -  Poil2 - Pwater2 - Psalts2;
Poil3 = 25;//% ( 3 - extract )
//taking pulp ( inert ) balance
U = Ppulp1 * F / Ppulp2;
//oil balance gives, F * Poil1 = U * Poil2 + R * Poil3,from these , we get
R = (F * Poil1 - U * Poil2)/Poil3;
S = U + R - F;
disp("kg",S,"(a)The amount of solvent used for extraction = ")
Precovered = 95;//%
mhexane2 = Phexane2 * U / 100;
mrecovered = mhexane2 * Precovered / 100;
P = mrecovered * 100 / S ;
disp("%",P,"(b)Percent of hexane used that is recovered from the underflow = ")
Poil = Poil3 * R * 100 / (F * Poil1 );
disp("%",Poil,"(c)Percent recovery of oil = ")
