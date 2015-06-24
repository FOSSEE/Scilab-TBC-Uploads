
mu_not=4D-7*%pi
phi_cc=1.2D-3  //flux in central core
phi_ol=phi_cc/2  //flux in each outer limb
//consider central core
a=9D-4  //cross-sectional area
B_cc=phi_cc/a  //flux density
H=1600  //corresponding to B_cc from Fig 4.2 in the textbook
l=(15-.2)*1D-2  //length of mean flux path of cast steel
AT_cc=H*l
ATg=.796*B_cc*2D-3*10^6
//consider outer limb
a=5D-2//cross-sectional area
B_ol=phi_ol/a
H=1200  //corresponding to B_ol from Fig 4.2 in the textbook
l=.35  //length of mean flux path
AT_ol=H*l
AT=AT_cc+ATg+AT_ol
N=400
mprintf("Exciting current in the coil=%f A",AT/N)
