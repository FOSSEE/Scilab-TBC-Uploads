b=250//width, in mm
D=350//depth, in mm
Asc=4*0.785*22^2//four 22 mm dia bars, in sq mm
Lef=5//effective length of column, in m
sigma_cc=4//in MPa
sigma_sc=130//in MPa
a=Lef*10^3/b
//as Lef/b > 12, it is a long column
Cr=1.25-Lef*1000/(48*b)//reduction coefficient
sigma_cc=Cr*sigma_cc//in MPa
sigma_sc=Cr*sigma_sc//in MPa
Ag=b*D//in sq mm
Ac=Ag-Asc//in sq mm
P=sigma_cc*Ac+sigma_sc*Asc//in N
mprintf("The safe load on the column=%f kN", P/10^3)
