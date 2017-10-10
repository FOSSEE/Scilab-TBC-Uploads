// Example 1.2 Find the velocity of charge leading to 1 A current which flows in a copper conductor of cross-section 1 cm^2 and length 10 Km. Free  electron density of copper = 8.5X10^28 per m^3. How long will it take the electric charge to travel from one end of the conductor to the other.
// 1 metre = 100 centimetre
// 1 kilometre = 1000 metre
i =1; // value of current (A)
A = 10^-4;// crossectional area of the conductor (m^2)
L = 10*10^3;// length of the conductor (m)
n =8.5*10^28;// charge density (e/m^3)
// Let V be the velocity of charge (m/S) and t (s) be the time taken by the charge to travel from one end of the conductor to the other
// FORMULAE: V= i/nAe, where is charge of an electron and t =L/V
V = i/prod([n,A,e]);// calculation of drift velocity
t = L/V;//calculation of the time
disp(V," velocity of the charge (in m/S)=" )
disp(t,"time taken by the charge to travel conductor of length 10 Km(second)=")
