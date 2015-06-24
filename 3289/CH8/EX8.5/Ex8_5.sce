clc

ti=0.075 //m
to=0.015//m
a=0.05//m
b=0.25//m
delta=0.05 //mm
w=6900*(2*%pi/60) //rpm
s=1
row=7.8*10^3//Ns^2/m^4
E=200 //GPa

//solution a:
t1=ti*a^s
disp(t1,"t1 is=")
t1=to*b^2
disp(t1,"t1 is=")
//(ti/to)=(t1*a^-s)/(t1*b^-s)=(b/a)^s
c=(b/a)^s

(ti/to)==c
disp(ti/to,"ti/t0 is=")
m1=-0.5+sqrt((0.5)^2+(1+0.3*1))
disp(m1,"m1 is=")
m2=-0.5-sqrt((0.5)^2+(1+0.3*1))
disp(m2,"m2 is=")

//sigmar=0=(c1/t1)*(0.05)^m1+(c2/t1)*(0.05)^(m2)-0.00176*row*w^2     // r=0.05
//sigmar=0=(c1/t1)*(0.25)^m1+(c2/t1)*(0.25)^(m2)-0.0439*row*w^2     // r=0.25

c1=t1*0.12529*row*w^2
disp(c1,"c1 is=")
c2=t1*-6.272*10^-5*row*w^2
disp(c2,"c2 is=")

r=0.05
sigmar=(0.12529*r^0.745-6.272*10^-5*r^(-1.745)-0.70*r^2)//*row*w^2
disp(sigmar,"sigmar is= ")

sigmatheta=(0.09334*r^0.745+1.095*10^-4*r^(-1.745)-0.40*r^2)//*row*w^2
disp(sigmatheta,"sigmatheta is= ")

//solution b:
r=0.05
//ur=(r*sigmatheta)/E
ur=(r*sigmatheta)
disp(ur,"ur is= ")

