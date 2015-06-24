clc
D=50 // in mm
A= %pi/4 *(D/1000)^2
// solving for test 1 
N=150
Sp=157.5
Sr=44.2
Tf=Sp/A
Tr=Sr/A
// from graph
k=tand(27)
k1=tand(14.6)

printf('Peak strength Tf = 40+ t*%f\n',k )
printf(' Residual strength Tr = t*%f',k1)

