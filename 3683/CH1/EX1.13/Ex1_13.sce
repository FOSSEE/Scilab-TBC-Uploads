//b=d/2 (given)
sigma_cbc=5//in MPa
sigma_st=140//in MPa
m=18.66//modular ratio
M=65*10^6//bending moment, in N-mm
//critical depth of neutral axis, Xc=d/(1+sigma_st/(m*sigma_cbc))=a*d
a=1/(1+sigma_st/(m*sigma_cbc))
d=(M/(sigma_cbc*a*(1-a/3)/4))^(1/3)//in mm
d=530//round-off, in mm
Xc=a*d//in mm
b=d/2//in mm
Ast=M/sigma_st/0.87/d//in sq mm
Ast=1007//round-off, in sq mm
mprintf("Dimensions of section=%d x %d mm\nArea of steel=%d mm^2",b,d,Ast)
