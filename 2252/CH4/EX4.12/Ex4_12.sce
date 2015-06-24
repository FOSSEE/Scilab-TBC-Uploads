
//two parallel magnetic circuits have equal reluctances
phi_cc=1.2D-3  //flux in central core
phi_ol=phi_cc/2  //flux in each outer limb
//calculating AT for central core
a=9D-4  //cross-sectional area
B_cc=phi_cc/a
H=1600 //corresponding to B_cc from Fig 4.2 in the textbook
l=.15  //length of mean flux path
AT_cc=H*l
//calculating AT for outer limbs
a=5D-4  //cross-sectional area
B_ol=phi_ol/a
H=1200  //corresponding to B_ol from Fig 4.2 in the textbook
l=.35  //length of mean flux path
AT_ol=H*l
AT=AT_cc+AT_ol
N=400
mprintf("Current required in the coil=%f A", AT/N)
