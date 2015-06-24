// P = 1MPa
vf = 0.001127; vg = 0.1944;
hg = 2778.1; uf = 761.68;
ug = 2583.6; ufg = 1822;
// Initial anf final mass
Vis = 5; Viw = 5;
Vfs = 6 ; Vfw = 4 ;
//
ms = ((Viw/vf)+(Vis/vg)) - ((Vfw/vf)+(Vfs/vg)) ;
U1 =  ((Viw*uf/vf)+(Vis*ug/vg));
Uf =  ((Vfw*uf/vf)+(Vfs*ug/vg));
Q = Uf-U1+(ms*hg)
disp("kJ",Q,"The heat transfer during the process is")