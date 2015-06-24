clc
// given that
m_capella = 0.05 // magnitude of brightness of capella at 14 parsecs
m_sun = 4.8 // absolute magnitude of brightness of sun
d = 14 // distance of capella in parsecs
D = 10 // distance of capella considerd for observation
// sample problem 2b page No. 333
printf("\n # Problem 2a # \n")

printf("Standard formula used \n\t M = m - 2.5log(L/L_0) ")
M_capella = m_capella - 5*log10(d/D) // calculation of absolute magnitude of brightness at distance of 10 parsecs
del_m = m_sun - M_capella // difference between absolute magnitude of sun and capella
ratio = 10^(del_m/2.5) 
printf ("\n Capella is  %f times brighter than sun.", ratio )
