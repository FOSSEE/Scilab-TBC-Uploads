Bf=1400//width of flange, in mm
Df=120//thickness of flange, in mm
d=600//effective depth, in mm
m=18.66//modular ratio
Ast=4000//in sq mm
M=160*10^6//in N-mm
//Assume x>Df; equating moments of area on compression and tension sides about N.A.
x=(m*Ast*d+Bf*Df^2/2)/(m*Ast+Bf*Df)//in mm
//let sigma_cbc_dash=a*sigma_cbc
a=(x-Df)/x
//to find lever arm
z=d-(1+2*a)/(1+a)*Df/3//in mm
sigma_cbc=2*M/(Bf*Df*(1+a)*z)//in MPa
sigma_st=m*sigma_cbc*(d-x)/x//in MPa
mprintf("Stress in concrete=%f N/mm^2\nStress in tension steel=%f N/mm^2",sigma_cbc,sigma_st)
//answer given in textbook is incorrect
