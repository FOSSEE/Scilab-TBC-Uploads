//Given that
No = 10^16  //number per m^3
T = 298  //in K
fac = 10^6
density = 2330  //in kg/m^3
Na = 6.023*10^23
M = 28.1*10^-3  //in kg/mol

//Sample Problem 42-6
pt = mopen('Example42_6_result.txt', 'wt')
mfprintf(pt, '**Sample Problem 42-6**\n')
Np = fac*No + No
NSi = density*Na/M
fraction = Np/NSi
mfprintf(pt, 'The fraction of Phosphorus atoms with Silicon atoms is equal to %e', fraction)
mclose(pt)