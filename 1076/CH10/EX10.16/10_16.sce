clear
clc

X=[
 .25 .25 .05   
 .2 .2 .05
 .06 .06 .06
 .07 .07 .07
 .1 .1 .3
 .1 .1 .3
]

B=[
    100 11
    100 11
    100 11
    100 11
    100 220 
    100 220
    ]
V1=11
V2=220
S=100
Xe=3*.03
//end 9
X1=(((X(1,1)*B(1,1) *V1/(S*B(1,2))) +(X(3,1)*B(3,1) *V1/(S*B(3,2))) )^-1+((X(2,1)*B(2,1) *V1/(S*B(2,2)))+(X(4,1)*B(4,1) *V1/(S*B(4,2))) +((X(5,1)*B(5,1) *V2/(S*B(5,2)))^-1 +(X(6,1)*B(6,1) *V2/(S*B(6,2)))^-1)^-1)^-1)^-1

X2=(((X(1,2)*B(1,1) *V1/(S*B(1,2))) +(X(3,2)*B(3,1) *V1/(S*B(3,2))) )^-1+((X(2,2)*B(2,1) *V1/(S*B(2,2)))+(X(4,2)*B(4,1) *V1/(S*B(4,2))) +((X(5,2)*B(5,1) *V2/(S*B(5,2)))^-1 +(X(6,2)*B(6,1) *V2/(S*B(6,2)))^-1)^-1)^-1)^-1

X0=((X(3,3)*B(3,1) *V1/(S*B(3,2)))^-1 + ((Xe    *B(4,1) *V1/(S*B(4,2))) + (X(2,3)*B(2,1) *V1/(S*B(2,2))) + (X(4,3)*B(4,1) *V1/(S*B(4,2))) +(((X(5,3)*B(5,1) *V2/(S*B(5,2))))^-1 +(X(6,3)*B(6,1) *V2/(S*B(6,2)))^-1)^-1 )^-1 )^-1

Z1=%i * round(X1*1e3)/1e3
Z2=%i * round(X2*1e3)/1e3
Z0=%i * round(X0*1e3)/1e3

//end q11

a=exp(%i * 2 * %pi /3)
A= [1 1 1 ; 1 a^2 a; 1 a a^2]


Ia1=1/(Z1 + (Z2*Z0/(Z2+Z0)))
Ia1=round(Ia1 *1e3)/1e3
Ia2=(Z0/(Z2+Z0)) * Ia1 *-1
Ia2=round(Ia2 *1e3)/1e3
Ia0=(Z2/(Z2+Z0)) * Ia1 *-1
Ia0=round(Ia0 *1e3)/1e3

mIa1=[ Ia0 Ia1 Ia2]'
mIa=A*mIa1
Ib=round(S*1e7/(sqrt(3) * V2 * 1e3))/10
Ia=round(abs(mIa)) * Ib


mprintf("\nline currents are: in Amperes ")
mprintf("\nIa= %s", string(round(abs(Ia(1))*10)/10)  )
mprintf("\nIb= %s", string(round(abs(Ia(2))*10)/10) +'/_'+ string(round(atand(imag(mIa(2)*Ib)/real(mIa(2)*Ib))*100)/100 +180 ))
mprintf("\nIc= %s", string(round(abs(Ia(3))*10)/10) +'/_'+ string(round(atand(imag(mIa(3)*Ib)/real(mIa(3)*Ib))*100)/100  ))
