clc
H=28
C=210
b=10
G=118
c=20
kh=0.1
Ka=tand(45-c/2)
zo=2*C/(G*(Ka))
n=zo/(H-zo)
Nac=1.60
Nav=0.375
L=1.17
Pae= G*(H-zo)^2*(L*Nav)-C*(H-zo)*Nac
printf('The magnitude of the active force, Pae = %f lb/ft',Pae)
