
mu_not=4D-7*%pi
flux=1.1D-3
A=4*4*1D-4//cross-sectional area
B=flux/A
mu_r=2000//rel permeability
H=B/(mu_not*mu_r)
//calculating ampere turns required for potion C
l=.25//length of mean flux path
ATc=H*l
//calculating ampere turns required for potion D
l=.3//length of mean flux path
ATd=H*l
//calculating ampere turns required for air gap
ATg=.796*B*.002*10^6 
AT=round(ATc)+round(ATd)+round(2*ATg)
mprintf("Total ampere turns required=%d", AT)
//answer vary from the textbook due to round off error
