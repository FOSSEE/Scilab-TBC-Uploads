//Chapter-3,Example3_17_5,pg 3-37

N=2.7*10^25                             //no of atoms per m^3

er=1.0000684                            //dielectric constant of He atom at NTP

e0=8.854*10^-12                         //absolute permitivity

a=e0*(er-1)/N                           //electronic polarizability

printf("1) electronic polarizability=")

disp(a)

R=(a/(4*%pi*e0))^(1/3)                  //radius of helium atom

printf("2) radius of He atoms =")

disp(R)

printf("meter")
