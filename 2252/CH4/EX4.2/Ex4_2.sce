

Bg=.7//flux density in air gap
Lg=3D-3//length of air gap
ATg=.796*Bg*Lg*1D+6
Bs=Bg//flux density in iron path
H=660//ampere turns corresponding to Bs from B-H curve(Fig.4.2) of textbook
Li=40D-2//length of flux path in iron portion
ATs=H*Li
AT=round(ATg)+round(ATs)
mprintf("Total ampere turns to be provided on the electromagnet=%d AT", AT)
//answer vary from the textbook due to round off error
