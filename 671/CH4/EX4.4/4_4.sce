/////////////////////part a
L=0.05
R=20
w=1.2E3
Xl=w*L
V=complex(100,200)
I=complex(5,0)

Xc=-imult(R+imult(Xl)-V/I)
C=1/w/Xc

disp(C)

/////////////////////part b
w=200
V=complex(100,0)
Xl=w*L
Xc=-imult(R+imult(Xl)-V/I)
C=1/w/Xc

disp(C)