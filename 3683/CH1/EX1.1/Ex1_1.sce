//let the depth of neutral axis be x
b=200//width, in mm
d=350//effective depth, in mm
m=18.66 //modular ratio
sigma_cbc=5//in MPa
sigma_st=140//in MPa
x=d/(1+sigma_st/(m*sigma_cbc))//in mm
mprintf("The depth of neutral axis = %f mm\n", x)
//to find area of steel
Ast=b*x*sigma_cbc/(2*sigma_st)//in sq mm
mprintf("Area of steel = %f mm^2\n", Ast)
//to find percentage steel
pst=Ast*100/(b*d)//in %
mprintf("Percentage of steel = %f percent\n", pst) 
