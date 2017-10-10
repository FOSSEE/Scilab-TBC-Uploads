dia=500//in mm
Asc=6*%pi/4*25^2//six 25 mm dia bars, in sq mm
Lef=8//effective length of column, in m
sigma_cc=5//in MPa
sigma_sc=190//in MPa
a=Lef*10^3/dia
//as Lef/b >12, it is a long column
Cr=1.25-Lef*1000/(48*dia)//reduction coefficient
sigma_cc=Cr*sigma_cc//in MPa
sigma_sc=Cr*sigma_sc//in MPa
Ag=%pi/4*dia^2//in sq mm
Ac=Ag-Asc//in sq mm
P=sigma_cc*Ac+sigma_sc*Asc//in N
mprintf("The safe load on the column=%f kN", P/10^3)
//the answer doesn't match with that given in textbook due to round-off error
