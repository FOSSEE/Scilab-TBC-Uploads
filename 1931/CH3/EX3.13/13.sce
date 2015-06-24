clc
clear
//INPUT DATA
OB=2//The intercept made by the parrell line ,OB=2b
OC=7//The intercept made by the parrell line ,OC=2c
OA=%inf//The intercept made by the parrell line ,OB=2b

//CALCULATION
A=1/OA//miller indice along x-axis
B=1/OB//miller indice along y-axis
C=1/OC//miller indice along z-axis
X=(B*(OC*OB))//taking L.C.M
Y=(C*(OC*OB))//taking L.C.M


//Output
printf('Miller indices are (1/%f 1/%i 1/%i)=(%i %i %i)',OA,OB,OC,A,X,Y)
