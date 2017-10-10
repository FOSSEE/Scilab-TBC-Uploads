b=250//width, in mm
D=600//overall depth, in mm
bottom_cover=50//in mm
top_cover=50//in mm
d=D-bottom_cover//effective depth, in mm
sigma_cbc=5//in MPa
sigma_st=140//in MPa
m=18.66//modular ratio
M=95*10^6//in N-mm
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
//to find Ast1
Ast1=b*Xc*sigma_cbc/(2*sigma_st)//in sq mm
Ast1=982//round-off, in sq mm
Mr=b*Xc*sigma_cbc/2*(d-Xc/3)//moment of resistance of singly reinforced beam, in N-mm
M1=M-Mr//remaining bending moment, in N-mm
//to find Ast2
Ast2=M1/(sigma_st*(d-top_cover))//in sq mm
Ast2=421//round-off, in sq mm
Ast=Ast1+Ast2//in sq mm
//to find Asc
Asc=m*Ast2*(d-Xc)/((1.5*m-1)*(Xc-top_cover))//in sq mm
Asc=565//round-off, in sq mm
mprintf("Tensile steel required=%d mm^2\nCompression steel required=%d mm^2",Ast,Asc)
