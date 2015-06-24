R=2000
C=5E-6
w=1000

Xc=1/(w*C*%i)
Y=1/R+1/Xc
Z=1/Y
Req=real(Z)
Ceq=-1/(imag(Z)*w)

disp(Ceq*1E6,Req)   //////Answer wrong in the book