clc
//Given that
M_p = 1.6725e-24 // mass of proton in g
M_n = 1.6748e-24 // mass of neutron in g
M_d = 3.3433e-24 // mass of deuteron in g
c= 3e8 // speed of light in m/s
// sample problem 15b page No. 306
printf("\n\n\n # Problem 15b # \n")

printf("\n Standard formula used E = m*c^2")
del_m = M_p + M_n - M_d // calculation of Loss in mass during formation of 1 atom of hydrogen

b_e = (del_m / 1000) * c^2 / (1.6e-19 * 1e6) // calculation of Binding energy of deuteron

printf ("\n Binding energy of deuteron is %f MeV.", b_e)

