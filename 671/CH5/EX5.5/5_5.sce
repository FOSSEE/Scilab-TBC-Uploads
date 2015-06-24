G=5E-6
L=2E-3
I=2E-3
w=5000

C=1/(w*w*L)
Vmax=I/G
Il=1
I=Il*w*L*G

disp(I,Vmax,C)