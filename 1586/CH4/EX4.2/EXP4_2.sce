clc;funcprot(0);//EXAMPLE 4.2
// Initialisation of Variables
n1=2;..........//No. of Atoms in BCC iron Crystal
m=55.847;..........//Atomic mass of BCC iron crystal
a0=2.866*10^-8;......//The lattice parameter of BCC iron in cm
Na=6.02*10^23;.......//Avogadro’s number in atoms/mol
rho1=7.87;........//Required density of iron BCC in g/cm^3
//CALCULATIONS
rho2=(n1*m)/(a0^3*Na);..........//The expected theoretical density of iron BCC 
X=(rho1*a0^3*Na)/m;.........//Number of iron atoms and vacancies that would be present in each unit cell for the required density
n2=n1-X;..........// no. of vacacies per unit cell
V=n2/a0^3;.........//The number of vacancies per cm^3 
disp(rho2,"The expected theoretical density of iron BCC ")
disp(X,"Number of iron atoms that would be present in each unit cell for the required density:")
disp(V,"The number of vacancies per cm^3 :")
