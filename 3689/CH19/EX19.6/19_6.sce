////Variable Declarations
mr = 2.5e-3        //Moles reacted, mol
P = 100.0          //Irradiation Power, J/s
t = 27             //Time of irradiation, s
h = 6.626e-34      //Planks constant, Js
c = 3.0e8          //Speed of light, m/s
labda = 280e-9     //Wavelength of light, m

//Calculation
Eabs = P*t
Eph = h*c/labda
nph = Eabs/Eph     //moles of photone
phi = mr/6.31e-3

//Results
printf("\n Total photon energy absorbed by sample %3.1e J",Eabs)

printf("\n Photon energy absorbed at 280 nm is %3.1e J",Eph)

printf("\n Total number of photon absorbed by sample %3.1e photones",nph)

printf("\n Overall quantum yield %4.2f",phi)

