syms k1 k2 s
T= k1/(s^s+k1*k2*s+k1)

Mp=25               //given
zeta=0.4037
Tp=4

omegaN=%pi/(Tp*(sqrt(1-zeta^2)))
disp(omegaN,"omegaN = ")
k1=omegaN^2
disp(k1," k1 = ")
k2=2*zeta/(sqrt(k1))
disp(k2," k2 = ")
