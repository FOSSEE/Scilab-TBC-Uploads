Bf=1300//width of flange, in mm
Df=80//thickness of flange, in mm
d=600//effective depth, in mm
sigma_cbc=7//in MPa
sigma_st=140//in MPa
m=13.33//modular ratio
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
Xc=240//round-off, in mm
//to find Ast
Ast=Bf*Df*(Xc-Df/2)/(m*(d-Xc))//in sq mm
mprintf("Neutral axis depth=%d mm\nArea of steel=%f mm^2", Xc,Ast)
