//Variable declaration:
T1 = 127.0+273.0                    //Surface temperature (K)
T2 = 20.0+273.0                     //Wall temperature (K)
T3 = 22.0+273.0                     //Air temperature (K)
s = 5.669*10**-8                    //Stefan-Boltzmann constant
e = 0.76                            //Surface emissivity of anodized aluminium
D = 0.06                            //Diameter of %pipe (m)
L = 100.0                           //Length of %pipe (m)
h = 15.0                            //%pipe convective heat transfer coefficient (W/m^2.K)

//Calculation:
Eb = s*T1**4                        //Emissive energy of %pipe (W/m^2)
E = e*Eb                            //Emissive power from surface of %pipe (W/m^2)
A = %pi*D*L                          //Surface area of %pipe (m^2)
Qc = h*A*(T1-T3)                    //Convection heat transfer to air (W)
Qr = e*s*A*(T1**4-T2**4)            //Radiation heat transfer rate (W)
Q = Qc+Qr                           //Total heat transfer rate (Btu/h)
Tav = (T1+T2)/2.0                   //Average temperature (K)
hr = 4*e*s*Tav**3                   //Radiation heat transfer coefficient (W/m^2.K)

//Result:
printf("The emissive power from surface of %%pipe is : %.0f W/m^2.",E)
printf("The convection heat transfer to air is : %.1f kW.",Qc/10**3)
printf("The radiation heat transfer rate is : %.1f kW",Qr/10**3)
printf("The radiation heat transfer coefficient is : %.1f W/m^2.K.",hr)
