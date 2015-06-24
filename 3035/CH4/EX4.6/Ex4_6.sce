
// part - I
// Dsa = GMR of phase a in section - I
// (r'Da1a2)(Da1a2r')^(1/4) = sqrt(r'Da1a2)
// Da1a2 = sqrt(D^2 +  4d^2)
printf(" Dsa = sqrt(r * sqrt(D^2 + 4*d^2))")

// Dsb = GMR of phase b in section - II
// Dsb = sqrt(r * Db1b2)
// Db1b2 = D

printf(" Dsb = sqrt(rD) ")

// Dsc = GMR of phase c in section - I
//  = sqrt(r'Dc1c2)
// Dc1c2 = sqrt(D^2 + rd^2)
printf(" Dsc = sqrt(r * sqrt(D^2 + 4*d^2))")

// part - II
// Dab = Mutual GMD between phase a and b in section I of the trasportation cycle.

printf(" Dab = sqrt(d * sqrt(d^2 + D^2))")
printf(" Dbc = sqrt(d * sqrt(d^2 + D^2))")
printf(" Dca = sqrt(2d * D)")

// part - III
// GMD for fictitious equilateral spacing

printf ( " Ds = (r)^(1/2) * (D^2 * 4d^2)^(1/6)*D^(1/6)")
// so the inductance per phase is,

printf(" L = 2 * 10^-4 * log((2^(1/6)*(D^2+d^2)^(1/6) * d^(1/2))/(r^(1/2) * (D^2 + 4d^2)^(1/6))) H/km" )
