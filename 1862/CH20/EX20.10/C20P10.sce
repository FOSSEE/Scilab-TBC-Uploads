clear
clc
//to find kinetic energy of each pion

//Given:
//value of mc^2 for Kaon
mk_c_square = 498//in MeV
//kinetic energy of Kaon
K = 325//in MeV
////value of mc^2 for pion
mpi_c_square = 140//in MeV
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying fomule for coservation of total relativistic energy
//applying conservation of energy
//initial total relativistic energy
Ek = K+mk_c_square//in MeV
//total initial momentum
pk_c = sqrt((Ek^2)-(mk_c_square)^2)//in MeV
//total energy of final system
E = Ek//in MeV
//applying conservation of momentum
//value of p1c
p1c = 668//in MeV
p_1c = -13//in MeV
//kinetic energy of each pion
//kinetic energy of first pion
K1 = (sqrt((p1c^2)+(mpi_c_square^2)))-mpi_c_square//in MeV
//kinetic energy of second pion
K2 = (sqrt((p_1c^2)+(mpi_c_square^2)))-mpi_c_square//in MeV
K1 = round(K1)

printf ("\n\n Initial total relativistic energy Ek = \n\n %3i MeV" ,Ek);
printf ("\n\n Total initial momentum pk_c = \n\n %3i MeV" ,pk_c);
printf ("\n\n Total energy of final system E = \n\n %3i MeV" ,E);
printf ("\n\n Value of p1c = \n\n %3i MeV or %3i MeV" ,p1c,p_1c);
printf ("\n\n Kinetic energy of first pion K1 = \n\n %3i MeV" ,K1);
printf ("\n\n Kinetic energy of second pion K2 = \n\n %.1f MeV" ,K2);
