clc
fc1 = 80000 // fixed cost for turret lathe in Rs
fc2 = 32000 // fixed cost for engine lathe in Rs
n1 = 16 // production of pieces per year in turret lathe
n2 = 10 // production of pieces per year in engine lathe
vc1 = 2 //operators cost in turret lathe
vc2 = 2.5 // operators cost in engine lathe
Q=poly(0,'Q')
Q=roots((fc1+1/n1*vc1*Q)-(fc2+2.5*Q/10))
printf("\n Break even point = %d pieces" , Q)
