Acell=6
Acellular=3024
Ncells=Acellular/Acell//number of cells in the system
Bt=12.5*10^6
BtMHz=12.5
Bc=30*10^3
Bg=10*10^3
Nc=21
Nd=((Bt-2*Bg)/Bc)-Nc//no. of data channels/cluster
K=7
Ndpcell=Nd/K
H=1/20
ntr=0.95
Ncallphr=1/H
Ncallphrpcell=Ndpcell*ntr*Ncallphr//number of calls per hour per cell
Ncallpuserphr=1.5
Nusers=Ncallphrpcell/Ncallpuserphr
n1=Ndpcell/(BtMHz*Acell)
n=ntr*n1
disp(Ncells,'number of cells in the system')
disp(Ncallphrpcell,'number of calls per hour per cell')
disp(Nusers,'average number of users per hour per cell')
disp(n,'system spectral efficiency in the units of Erlangs/MHz/kmsqr')
