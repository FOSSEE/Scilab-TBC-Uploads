Bf=750//width of flange, in mm
Bw=250//breadth of web, in mm
Df=100//thickness of flange, in mm
d=700//effective depth, in mm
sigma_cbc=7//in MPa
sigma_st=190//in MPa
m=13.33//modular ratio
M=460*10^6//in N-mm
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
sigma_cbc_dash=sigma_cbc*(Xc-Df)/Xc//in MPa
//to find lever arm
z=d-(sigma_cbc+2*sigma_cbc_dash)/(sigma_cbc+sigma_cbc_dash)*Df/3//in mm
//taking moments about tensile steel
Ast=M/(sigma_st*z)//in sq mm
Ast=3699//round-off, in sq mm
mprintf("Area of steel required=%d mm^2", Ast)
