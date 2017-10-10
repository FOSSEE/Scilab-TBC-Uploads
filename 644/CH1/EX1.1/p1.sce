// Example 1.1 A conductor material has a free- electron density of 10^24 electrons per metre^3.When a voltage is applied, a constant drift velocity of 1.5x10^-2 metre/second is attained by the electrons. If the cross- sectional area of the material is 1 cm^2, calculate the magnitude of the current. Electronic charge is 1.6x10^-19.
// 1 metre = 100 centimetre
n = 10^24;// charge density (e/m^3)
Vd = 1.5*10^-2; //drift velocity attained by electrons(m/s)
A =  10^-4; // crossectional area of the material (m^2)
e = 1.6*10^-19; // charge of an electron (coulombs)
// let i be the magnitude of the current
// FORMULA : i = nAeVd
i = prod([n,A,e,Vd]) // calculation
disp(i,"magnitude of the current(in ampere)= ")

