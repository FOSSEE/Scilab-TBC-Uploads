Bf=1250//width of flange, in mm
Df=120//thickness of flange, in mm
d=700//effective depth, in mm
m=13.33//modular ratio
Ast=5500//in sq mm
W=60//UDL including self-weight, in kN/m
l=8//span, in m
M=W*l^2/8*10^6//in N-mm
//Assume x>Df. Equating moments of area on compressiona and tension sides about N.A.
x=(m*Ast*d+Bf*Df^2/2)/(m*Ast+Bf*Df)//in mm
//let sigma_cbc_dash=a*sigma_cbc
a=(x-Df)/x
//to find lever arm
z=d-(1+2*a)/(1+a)*Df/3//in mm
sigma_cbc=2*M/(Bf*Df*(1+a)*z)//in MPa
sigma_st=m*sigma_cbc*(d-x)/x//in MPa
mprintf("Stress in concrete=%f N/mm^2\nStress in tension steel=%f N/mm^2",sigma_cbc,sigma_st)
