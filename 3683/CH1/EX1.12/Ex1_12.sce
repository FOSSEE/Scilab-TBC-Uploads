b=250//width, in mm
sigma_cbc=5//in MPa
sigma_st=190//in MPa
m=280/(3*sigma_cbc)//modular ratio
M=75*10^6//bending moment, in N-mm
//critical depth of neutral axis, Xc=d/(1+sigma_st/(m*sigma_cbc))=a*d
a=1/(1+sigma_st/(m*sigma_cbc))
d=(M/(b*sigma_cbc*a*(1-a/3)/2))^0.5//in mm
d=640//round-off, in mm
Xc=a*d//in mm
Ast=b*Xc*sigma_cbc/(2*sigma_st)//in sq mm
mprintf("Effective depth=%d mm\nArea of steel=%f mm^2",round(d),Ast)
