//variable initialization
RestEnergy=0.51                                   //rest energy of electron (Mev)
T=2000                                            //potential difference i.e. kinetic energy (Mev)

//part(i)effective mass of electron in terms of its rest mass
EffectiveMass=1+(T/RestEnergy);                   //ratio of effective mass of electron and rest mass

//part(ii)speed of electron in terms of the speed of light
Beta=(1-(1/EffectiveMass)^2)^(1/2);               //Calculatio of Beta

printf("\n\t The effective mass of electron = %.2f*mo    ;mo is rest mass of electron\n\t The speed of electron = %.10f*c    ;c is speed of light",EffectiveMass,Beta);

//Note: In the book answer of m/mo is slightly wrong
