//Section-9,Example-1,Page no.-E.16
//To calculate dl(G),dl(H) and dl(S).
clc;
T=-298
E=1.02
d_ETP=-5*10^-5
n=2
F=96500
dl_G=-(n*F*E)
disp(dl_G,'(in Jmol^-1)')
dl_S=n*F*d_ETP
disp(dl_S,'(in JK^-1mol^-1)')
dl_H=dl_G+(T*dl_S)
disp(dl_H,'(in Jmol^-1)')

