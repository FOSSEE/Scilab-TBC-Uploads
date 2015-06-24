//directivity of half wave dipole
//given
clc
Pr=1//watts
r=1//as value of "r" do not effect the expression
n0=120*%pi
for(r!=0)
I=sqrt(Pr/73)
Emax=60*I/r
si=r^2*Emax^2/n0
gdmax=4*%pi*(si)/Pr
gdmax=round(gdmax*1000)/1000///rounding off decimals
end
disp(gdmax,'the directivity expression for half wave dipole')
