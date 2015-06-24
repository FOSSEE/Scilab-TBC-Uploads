V1=10

//Mesh Method
A=[1+10*%i,-80*%i;80*%i,-500-800*%i]
I=inv(A)*[V1;0]

V2=500*I(2)

disp(V1,V2,I)

