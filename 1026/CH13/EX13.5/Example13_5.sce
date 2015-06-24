//chapter13,Example13_5,pg 392

M2H1=2.01474

M3H1=3.01700

M1n0=1.008986

M4He2=4.003880

//thermonuclear reaction in hydrogen bomb explosion 

//2H1 + 3H1 -> 4He2 + 1n0

Mreac=M2H1+M3H1//mass of reactants

Mprod=M4He2+M1n0//mass of products

Q=Mreac-Mprod

Q=Q*931//converting in Mev

printf("energy/reaction\n")

printf("Q=%.2f Mev",Q)