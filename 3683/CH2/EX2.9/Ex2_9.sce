b=360//width, in mm
d=750//effective depth, in mm
top_cover=50//in mm
sigma_cbc=7//in MPa
sigma_st=190//in MPa
m=13.33//modular ratio
M=300*10^6//in N-mm
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//to find Ast1
Ast1=b*Xc*sigma_cbc/(2*sigma_st)//in sq mm
Ast1=1638//round-off, in sq mm
Mr=b*Xc*sigma_cbc/2*(d-Xc/3)//moment of resistance of singly reinforced beam, in N-mm
M1=M-Mr//remaining bending moment, in N-mm
//to find Ast2
Ast2=M1/(sigma_st*(d-top_cover))//in sq mm
Ast=Ast1+Ast2//in sq mm
//to find Asc
Asc=m*Ast2*(d-Xc)/((1.5*m-1)*(Xc-top_cover))//in sq mm
mprintf("Tensile steel required=%f mm^2\nCompression steel required=%f mm^2",Ast,Asc)
