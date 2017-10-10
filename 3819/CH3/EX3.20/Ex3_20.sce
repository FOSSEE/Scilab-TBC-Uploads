// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.20

//Data given in the Problem
b=2
l=3
A=b*l
W=343350
dens=1000
g=9.81
theta=45


//Calculations
h=poly(0,"h")
H=horner(h,0)
H=h-(3*sin(theta/180*%pi)-0.6*tan(theta/180*%pi))
F=dens*g*A*H
IG=b*l^3/12
H0=IG*(sin (theta*%pi/180))^2/(A*H)+H
//Taking moments about the hinge,
AK=W*0.6*sin(theta/180*%pi)/F
//but AK = H0-AC=H0-(CD-AD)
//Therefore,
CD=h
AD=l*sin (theta/180*%pi)
AC=CD-AD
//Hence.AK=H-(CD-AD)
ak=H0-AC
//We know ak=AK
//hence,solving AK-ak=0
function [f]=F(h)
    f=(b*l^3/12*(sin (theta*%pi/180))^2/(A*h-(3*sin(theta/180*%pi)-0.6*tan(theta/180*%pi)))+(h-(3*sin(theta/180*%pi)-0.6*tan(theta/180*%pi)))-(h-l*sin (theta/180*%pi)))-W*0.6*sin(theta/180*%pi)/(dens*g*A*(h-(3*sin(theta/180*%pi)-0.6*tan(theta/180*%pi))))
endfunction
h=10
h=fsolve(h,F)
mprintf("The  height of water that just causes the gate to open is %f m.\n",h)
