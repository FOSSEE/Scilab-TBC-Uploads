clc
c=20
// from table 16.1
Nc=17.69
Nq=7.44
Ng=3.64

Df=3
G=110
q=G*Df

C=200
B=4

Qu= C*Nc+q*Nq+G*B*Ng/2

Fs=3
Qall=Qu/Fs
printf('Qa = %f lb/ft^2',Qall)
