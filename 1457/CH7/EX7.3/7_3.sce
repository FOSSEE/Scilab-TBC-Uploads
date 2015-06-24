clc
//Initialization of variables
L=50
Fm=0.02 //N
Vm=1 //m/s
//calculations
Fp=L^3 *Fm 
Fp=Fp*0.2248
Vp=sqrt(L) *Vm
Vp=Vp*3.28
Hp=Fp*Vp/550
//results
printf("Required horsepower = %.1f hp",Hp)
