
//Part (a)
E1= 1.0; //energy of first electron, eV
E2= 2.0; //energy of second electron, eV
Eb= 10.0; //height of barrier, eV
Wb= 0.50; //width of barrier, nm
Wb= Wb* 10^(-9); //converting to m
hbar= 1.054*(10^(-34)); //reduced Planck's conctaant, J.s
Me= 9.1*(10^(-31)); //mass of electron, kg
e= 1.6*(10^(-19)); //charge of an electron, J/eV
k1= sqrt(2*Me*(Eb-E1)*e)/hbar; //for first electron, m^(-1)
k2= sqrt(2*Me*(Eb-E2)*e)/hbar; //for second electron, m^(-1)
T1= (%e)^((-2)*k1*Wb) //transmission probability for first electron
T2= (%e)^((-2)*k2*Wb) //for second electron
disp(T1,"Transmission probability for electrons with energy 1.0 eV is: ")
disp(T2,"Transmission probability for electrons with energy 2.0 eV is: ")

//Part (b)
Wb= Wb*2; //Barrier width doubled
T11= (%e)^((-2)*k1*Wb) // changed transmission probability for first electron
T22= (%e)^((-2)*k2*Wb) //for second electron
disp(T11,"Transmission probability for electrons with energy 1.0 eV is: ")
disp(T22,"Transmission probability for electrons with energy 2.0 eV is: ")