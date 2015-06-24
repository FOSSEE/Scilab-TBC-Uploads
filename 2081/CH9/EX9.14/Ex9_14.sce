Bt=25*10^6//system bandwidth
Bc=30*10^3//channel bandwidth
Bg=20*10^3//guard spacing
Nu=((Bt-2*Bg)/Bc)
Tf=40*10^-3//frame time
Tp=0*10^-3//preamble time
Tt=0*10^-3//trailer time
Ld=260
Ls=324
ntframe=((Tf-Tp-Tt)/Tf)*(Ld/Ls)
ntsys=ntframe*(Nu*Bc*(1/Bt))
Rs=7.95*10^3
ntmod=Rs/Bc
K=7
nt=ntsys*ntmod/K
disp(Nu,'number of simultaneous users that can be accomodated in each cell')
disp(ntframe,'spectral efficiency per frame of a TDMA system')
disp(ntsys,'spectral efficiency of the TDMA system')
disp(nt,'overall spectral efficiency in bps/Hz/cell')
