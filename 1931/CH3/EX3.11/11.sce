clc
clear
//INPUT DATA
OA=0.025//The unit cell makes intercepts on a in nm
OB=0.02//The unit cell makes intercepts on b in nm
OC=0.01//The unit cell makes intercepts on c in nm
a=0.05//The unit cell edge of an orthorhombic crystal in nm
b=0.04//The unit cell edge of an orthorhombic crystal in nm
c=0.03//The unit cell edge of an orthorhombic crystal in nm

//CALCULATION
p=a/OA//miller indices with respect to x axis
q=b/OB//miller indices with respect to y axis
r=c/OC//miller indices with respect to z axis

//OUTPUT
printf('The miller indices of the set of parallel lines is (%i %i %i)',p,q,r)

