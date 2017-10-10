syms k T s
T= k/(s^2+k*T*s+k)

Mp=20               //given
zeta=0.4559
Tp=2

omegaN=%pi/(Tp*(sqrt(1-zeta^2)))
disp(omegaN,"omegaN = ")
k=omegaN^2
disp(k," k = ")
T=2*zeta*omegaN/k
disp(T," T = ")

