clear//Variables

up = 0.048                      //hole mobility (in meter-square per volt-second)
un = 0.135                      //electron mobility (in meter-square per volt-second)
q = 1.602 * 10**-19             //charge on electron (in Coulomb)
Nsi1 = 5 * 10**28               //concentration of intrinsic silicon (in atoms per cubic-meter)
ni = 1.5 * 10**16               //number of electron-hole pairs (per cubic-meter)
alpha = 0.05                    //temperature coefficient (in per degree Celsius)
dT = 14                         //change in temperature (in degree celsius)

//Calculation

sig1 = q * ni * (un + up)       //conductivity of intrinsic silicon (in per ohm-meter)
NA = Nsi1/10**7                 //Number of indium atoms (in per cubic-meter)
p = NA                          //Number of holes (in per cubic meter)
n = ni**2/p                     //Number of free electrons (in per cubic-meter)
sig2 = q * p * up               //Conductivity of doped silicon (in per ohm-meter)
sig34 = sig1*(1 + alpha * dT)   //Conductivity at 34 degree Celsius (in per ohm-meter) 

//Result

printf("\n Conductivity of intrinsic silicon is  %0.5f  per ohm-meter.\nConductivity of doped Silicon is  %0.2f  per ohm-meter.\nConductivity of silicon at 34 degree Celsius is  %0.5f  per ohm-meter.",sig1,sig2,sig34)
