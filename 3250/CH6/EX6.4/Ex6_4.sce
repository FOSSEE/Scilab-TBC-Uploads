clc 
// Given that
I = 1000 // Current in amp
p1 = 72.5 // Percentage(by weight) of Ni in Nimonic 75 alloy
p2 = 19.5 // Percentage(by weight) of Cr in Nimonic 75 alloy
p3 = 5 // Percentage(by weight) of Fe in Nimonic 75 alloy
p4 = 0.4 // Percentage(by weight) of Ti in Nimonic 75 alloy
p5 = 1 // Percentage(by weight) of Si in Nimonic 75 alloy
p6 = 1 // Percentage(by weight) of Mn in Nimonic 75 alloy
p7 = 06 // Percentage(by weight) of Cu in Nimonic 75 alloy
// Sample Problem 4 on page no. 345
printf("\n # PROBLEM 6.4 # \n")
// From the table 6.3 given in the book
D1 = 8.9 // Density of Ni in g/cm^3
D2 = 7.19 // Density of Cr in g/cm^3
D3 = 7.86 // Density of Fe in g/cm^3
D4 = 4.51 // Density of Ti in g/cm^3
D5 = 2.33 // Density of Si in g/cm^3
D6 = 7.43 // Density of Mn in g/cm^3
D7 = 8.96 // Density of Cu in g/cm^3
A1 = 58.71 // Gram atomic weight of Ni in gm
A2 = 51.99 // Gram atomic weight of Cr in gm
A3 = 55.85 // Gram atomic weight of Fe in gm
A4 = 47.9 // Gram atomic weight of Ti in gm
A5 = 28.09 // Gram atomic weight of Si in gm
A6 = 54.94 // Gram atomic weight of Mn in gm
A7 = 63.57 // Gram atomic weight of Cu in gm
Z1 = 2 // Valence of dessolation for Ni
Z2 = 2 // Valence of dessolation for Cr
Z3 = 2 // Valence of dessolation for Fe
Z4 = 3 // Valence of dessolation for Ti
Z5 = 4 // Valence of dessolation for Si
Z6 = 2 // Valence of dessolation for Mn
Z7 = 1 // Valence of dessolation for Cu
// Above values are given in table 6.3 in the book
D = 100/((p1/D1)+(p2/D2)+(p3/D3)+(p4/D4)+(p5/D5)+(p6/D6)+(p7/D7))
Q = ((0.1035*(10^-2))/D)*(1/((p1*Z1/A1)+(p2*Z2/A2)+(p3*Z3/A3)+(p4*Z4/A4)+(p5*Z5/A5)+(p6*Z6/A6)+(p7*Z7/A7)))
R = Q*I*60
printf("\n Removal rate = %f cm^3/min",R)

