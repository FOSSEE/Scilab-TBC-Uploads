//example-20.7
//page no-609
//given
//thickness of BaTiO3 wafer
t=0.15*10^-3  //m
//compressive strength
sigma=25*10^6  //N/m^2
//young's modulus of elasticity
Y=70*10^9  //N/m^2
//electric field E produced by the stress sigma is related as
//E=sigma*lambda  where lambda is constant known as voltage output coefficient
lambda=1*10^-10  //m/V
//and modulus of elasticity is gven by
//Y=1/(lambda*t)
//so we get from 1 and 2
//E=sigma/(Y*t)
//also E=V/t
//so
V=sigma*t/(lambda*Y)  //V
printf ("potential difference producd across tha wafer is %f V",V)
