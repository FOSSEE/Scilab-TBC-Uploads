//Chapter-2,Example2_24_1,pg 2-55

x1=0.4                                  //difference between fermi level and conduction band(Ec-Ef)

T=300                                   //temp in kelvin

K=8.62*10^-5                            //Boltzman constant in eV

//ne=N*e^(-(Ec-Ef)/(K*T))

//ne is no of electron in conduction band

//since concentration of donor electron is doubled

a=2                                     //ratio of no of electron

//let x2 be the difference between new fermi level and conduction band(Ec-Ef')

x2=-log(a)*(K*T)+x1                     //arranging equation ne=N*e^(-(Ec-Ef)/(K*T))

printf("Fermi level will be shifted towards conduction band by")

disp(x2)

printf("eV")
