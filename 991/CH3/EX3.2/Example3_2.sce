//Example 3.2.
format(6)
me=1000*9.1*10^-31
disp(me,"Mass of the charged particle(kg) = 1000 times the mass of an electron =")
disp("The charge of the partical = 1.6*10^-19 C")
q=1.6*10^-19 //charge of the particle
V=1000 //potential difference
format(8)
v=sqrt(2*q*V/me)
disp(v,"Therefore, The velocity, v(m/s) = sqrt(2*q*V/me) =")
ke=(q*V)/(1.6*10^-19)  // in eV
disp(ke,"Kinetic energy(eV) = q x V =")