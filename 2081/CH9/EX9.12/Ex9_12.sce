Bt=12.5*10^6
BtMHz=12.5
Bc=30*10^3
Bg=10^3
Nt=(Bt-2*Bg)/Bc//total number of channels/cluster
Nc=21
Nd=Nt-Nc//number of user data transmission/cluster
K=7//frequency reuse factor
Ndpcell=Nd/K
Acell=6
n1=Ndpcell/(BtMHz*Acell)
disp(Nt,'total number of channels/cluster (Nt)')
disp(Nd,'number of user data transmission/cluster (Nd)')
disp(Ndpcell,'total number of transmission/cell (Nd/cell) if frequency reuse factor factor is 7 ')
disp(n1,'overall spectral efficiency n1 in channels/MHz/kmsqr for cell area 6kmsqr is ')
