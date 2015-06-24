// Scilab code Exa8.5.2: To calculate the inherent uncertainity in mass of the given particle : P.no. 360 (2011)
 // Here r_1 and r_2 are two decay rates are given
 // Declare the cell
 R1 = cell(1,2)
 R1(1,1).entries = 'r_1'
 R1(1,2).entries = 'r_2'
    printf("\n The inherent uncertainity in mass of particle = h(%s + %s) ", R1(1,1).entries, R1(1,2).entries) 
// Result
//   The inherent uncertainity in mass of particle = h(r_1 + r_2)









































































