// Calculate effective number of lattice point in three cubic space lattice
clc
sc_n = 1/8 // sharing of one lattice point in a unit cell
sc_N = 8 // Number of lattice points in Simple cubic 
bcc_n_e = 1/4// sharing of one edge lattice point in a BCC 
bcc_N_e = 4// Number of edge lattice point in a BCC 
bcc_n_c  = 1// sharing of one body center lattice point in a BCC 
bcc_N_c = 1// Number of body center lattice point in a BCC 
fcc_n_e = 1/8 // sharing of one corner lattice point in a FCC 
fcc_N_e = 8// Number of corner lattice point in a FCC 
fcc_n_f = 1/2 // sharing of one face center lattice point in a FCC 
fcc_N_f = 6// Number of face center lattice point in a FCC 
printf("\n Example 3.2 ")
sc_net = sc_n*sc_N
bcc_net = bcc_n_e*bcc_N_e+bcc_n_c*bcc_N_c
fcc_net = fcc_n_e*fcc_N_e+fcc_n_f*fcc_N_f
printf("\n Effective number of lattice points are as:")
printf("\n\n Space lattice \t Abbreviation \t Effective number of lattice point in unit cell \n")
printf("\n Simple cubic \t\tSC \t\t\t\t %d\n Body center cubic\tBCC \t\t\t\t %d\n Face centered cubic\tFCC \t\t\t\t %d ",sc_net,bcc_net,fcc_net)

