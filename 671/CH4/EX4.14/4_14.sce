w=600
R=10
L=10E-3
C=0.5E-3
Xl=w*L*%i
Xc=1/(w*C*%i) //Xc value in the book is wrong
V1=40
V2=complex(0,-30)

//mesh analysis
A=[R+Xl,-R;-R,R+Xc]
I=inv(A)*[V1;V2]

Ir=I(1)-I(2)
Vr=R*Ir

disp(Vr)  //Final answer is different