
mu_not=4D-7*%pi
flux=.018
//consider part A
a=205D-4  //cross sectional area
Ba=flux/a
H=760  //corresponding to Ba as obtained from Fig. 4.2 in the textbook
l=(38-.25)*1D-2  //length of mean flux path in iron portion of part A
ATi=H*l
ATg=.796*Ba*2.5D-3*10^6
ATa=ATi+ATg
//consider part B
a=255D-4
Bb=flux/a
H=670  //corresponding to Bb as obtained from Fig. 4.2 in the textbook
l=.25  //length of mean flux path in iron portion of part B
ATb=H*l
AT=round(ATa)+round(ATb)
mprintf("Total ampere turns required for complete magnetic circuit=%d", AT)
