// Example 11.5, Page No-463
clear
clc

//Part A
printf('\nPart A')
R=10000
Vr=10
n=4
lsb=0.5
Rf=(R*2^n)*lsb/Vr
Rfn=Rf/1000
printf('\nRf= %d kohm', Rfn)

printf('\nPart B')
b1=1
Rf1=R*6/(Vr*lsb)
Rfn1=Rf1/1000
printf('\nRf= %d kohm', Rfn1)

printf('\nPart C')
Vfs=12
Rf2=R*Vfs/Vr
Rfn2=Rf2/1000
printf('\nRf= %d kohm', Rfn2)
printf('\nPart D')
Vfs1=10
bb=0.9375
Rf3=R*Vfs1/(Vr*bb)
Rfn3=Rf3/1000
printf('\nRf= %.3f kohm', Rfn3)


