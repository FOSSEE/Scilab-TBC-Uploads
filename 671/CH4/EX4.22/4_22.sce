V=12
w=1000
R=4
L=5E-3
C=400E-6
Xl=w*L*%i
Xc=1/(w*C*%i)

//mesh analysis
A=[R+Xl,-Xl;2-Xl,Xl+Xc]
I=inv(A)*[12;0]

disp(I(1)) //answer is wrong in the book