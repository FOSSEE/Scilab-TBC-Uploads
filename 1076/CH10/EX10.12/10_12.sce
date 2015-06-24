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
Z=[Z1 Z2 Z0]'
//end ques 11

a=exp(%i * 2 * %pi /3)
A= [1 1 1 ; 1 a^2 a; 1 a a^2]

//12(a)
Ia1a=1/(Z1+Z2+Z0)
Ia1a=round(Ia1a *1e2)/1e2
mIa1a=[ Ia1a Ia1a Ia1a]'
mIa=A*mIa1a
Ia=round(mIa(1)*100)/100
Iaa = round(abs(mIa(1))*100)/100
Iba=round(S*1e7/(sqrt(3) * V2 * 1e3))/10
IFa=round(Iba * Iaa *100)/100

mprintf("\n(a) Fault current = %.2f A",IFa)

//12(b)

Va1=round((1- (Z1 * Ia1a))*100)/100
Va2=round((0- (Z2 * Ia1a))*100)/100
Va0=round((0- (Z0 * Ia1a))*100)/100
mVa1=[ Va0  Va1 Va2]'
mVa=A*mVa1
v=mVa * V2 / sqrt(3)
v=round(v *10000)/10000

mprintf("\n\n(b)line to neutral voltages in KV  ")
mprintf("\nVa= %s", string(fix(abs(v(1))*100)/100)  )
mprintf("\nVb= %s", string(fix(abs(v(2))*100)/100) +'/_'+ string(round(atand(imag(v(2))/real(v(2)))*100)/100 +180 ) )
mprintf("\nVc= %s", string(fix(abs(v(3))*100)/100) +'/_'+ string(round(atand(imag(v(3))/real(v(3)))*100)/100 +180))

//12(c) --- g2

Ia1g2= Ia1a * (((X(1,1)*B(1,1) *V1/(S*B(1,2))) +(X(3,1)*B(3,1) *V1/(S*B(3,2))) ))/((((X(1,1)*B(1,1) *V1/(S*B(1,2))) +(X(3,1)*B(3,1) *V1/(S*B(3,2))) )+((X(2,1)*B(2,1) *V1/(S*B(2,2)))+(X(4,1)*B(4,1) *V1/(S*B(4,2))) +((X(5,1)*B(5,1) *V2/(S*B(5,2)))^-1 +(X(6,1)*B(6,1) *V2/(S*B(6,2)))^-1)^-1)))
Ia1g2=round(Ia1g2 *1e2)/1e2

Ia2g2= Ia1a * (((X(1,2)*B(1,1) *V1/(S*B(1,2))) +(X(3,2)*B(3,1) *V1/(S*B(3,2))) ))/((((X(1,2)*B(1,1) *V1/(S*B(1,2))) +(X(3,2)*B(3,1) *V1/(S*B(3,2))) )+((X(2,2)*B(2,1) *V1/(S*B(2,2)))+(X(4,2)*B(4,1) *V1/(S*B(4,2))) +((X(5,2)*B(5,1) *V2/(S*B(5,2)))^-1 +(X(6,2)*B(6,1) *V2/(S*B(6,2)))^-1)^-1)))
Ia2g2=round(Ia2g2 *1e2)/1e2

Ia0g2= Ia1a * (((X(3,3)*B(3,1) *V1/(S*B(3,2))) ))/((((Xe *B(4,1) *V1/(S*B(1,2))) +(X(3,3)*B(3,1) *V1/(S*B(3,2))) )+(X(2,3)*B(2,1) *V1/(S*B(2,2)))+(X(4,3)*B(4,1) *V1/(S*B(4,2))) +((X(5,3)*B(5,1) *V2/(S*B(5,2)))^-1 +(X(6,3)*B(6,1) *V2/(S*B(6,2)))^-1)^-1))
Ia0g2=round(Ia0g2 *1e2)/1e2

mIa1g2=[ Ia0g2 Ia1g2 Ia2g2]'
mIag2=A*mIa1g2
Ibc=round(S*1e7/(sqrt(3) * V1 * 1e3))/10
Iag2=abs(mIag2) * Ibc


mprintf("\n\n(c)line currents in A at generator 2 ")
mprintf("\nIa= %s", string(round(abs(Iag2(1))*10)/10)  )
mprintf("\nIb= %s", string(round(abs(Iag2(2))*10)/10) )
mprintf("\nIc= %s", string(round(abs(Iag2(3))*10)/10) )


Va1g2=round((1- (X(2,1) *%i * Ia1g2))*100)/100
Va2g2=round((0- (X(2,2) *%i * Ia2g2))*100)/100
Va0g2=round((0- ((X(2,3) +Xe) *%i * Ia0g2))*10000)/10000
mVa1g2=[ Va0g2  Va1g2 Va2g2]'
mVag2=A*mVa1g2
vg2=mVag2 * V1 / sqrt(3)

mprintf("\n\nline to neutral voltages in KV at generator 2 ")
mprintf("\nVa= %s", string(fix(abs(vg2(1))*100)/100)  )
mprintf("\nVb= %s", string(fix(abs(vg2(2))*100)/100) )
mprintf("\nVc= %s", string(fix(abs(vg2(3))*100)/100) )

//12(c) --- g1

Ia1g1= (Ia1a-Ia1g2) * exp(%i * 1*%pi /6) *-1
Ia1g1=round(Ia1g1 *1e2)/1e2

Ia2g1= (Ia1a-Ia2g2)* exp(%i *-1*%pi /6) *-1
Ia2g1=round(Ia2g1 *1e2)/1e2

Ia0g1= 0

mIa1g1=[ Ia0g1 Ia1g1 Ia2g1]'
mIag1=A*mIa1g1
mIag1=round(mIag1*1e1)/1e1
Ibc=round(S*1e7/(sqrt(3) * V1 * 1e3))/10
Iag1=abs(mIag1) * Ibc


mprintf("\n\nline currents in A at generator 1")
mprintf("\nIa= %s", string(round(abs(Iag1(1))*1)/1)  )
mprintf("\nIb= %s", string(round(abs(Iag1(2))*1)/1) )
mprintf("\nIc= %s", string(round(abs(Iag1(3))*1)/1) )


Va1g1=round((1- (X(1,1) *%i * (Ia1a-Ia1g2)))*10000)/10000
Va1g1=Va1g1 *  exp(%i * 1*%pi /6) 
Va2g1=round((0- (X(1,2) *%i * (Ia1a-Ia2g2)))*10000)/10000
Va2g1=Va2g1 *  exp(%i *- 1*%pi /6) 
Va0g1=0
mVa1g1=[ Va0g1  Va1g1 Va2g1]'
mVag1=A*mVa1g1
vg1=mVag1 * V1 / sqrt(3)

mprintf("\n\nline to neutral voltages in KV at generator 1 ")
mprintf("\nVa= %s", string(fix(abs(vg1(1))*100)/100)  )
mprintf("\nVb= %s", string(fix(abs(vg1(2))*100)/100) )
mprintf("\nVc= %s", string(fix(abs(vg1(3))*100)/100) )

