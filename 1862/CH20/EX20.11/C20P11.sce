clear
clc
//to find threshold kinetic energy to produce antiproton

//Given:
//refer to figure 20-23 from page no. 470
//rest energy of proton
mp_c_square = 938//in MeV
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying fomule for relativistic momentum
//applying conservation of energy
//value of mpc^2/E1'
mpc_square_by_E1dash = 1/2
//value of v1'/c
v1_dash_by_c = sqrt(1-(mpc_square_by_E1dash)^2)
//refer to table 20-3
//speed of incident proton
v_dash = v1_dash_by_c//times c
u = v1_dash_by_c//times c
v = (v_dash+u)/(1+(v1_dash_by_c)^2)//times c
//total energy of incident proton
E = 1/(sqrt(1-(v^2)))//times mp_c_square
E = round(E)
//threshold kinetic energy to produce antiproton
K = (E*mp_c_square)-mp_c_square//in MeV

printf ("\n\n Value of v1_dash/c = \n\n %.3f" ,v1_dash_by_c);
printf ("\n\n Speed of incident proton v = \n\n %.3fc" ,v);
printf ("\n\n Total energy of incident proton E = \n\n %1imp_c_square ",E);
printf ("\n\n Threshold kinetic energy to produce antiproton K = \n\n %4i MeV",K);

