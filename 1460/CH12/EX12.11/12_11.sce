clc
//initialization of variables
g1=[0.489 100 700 35.1 0.154]
g2=[0.483 15 600 55.2 0.177]
g3=[0.028 30 500 386 0.754]
//calculations
v1=g1(1) *g1(4) *g1(3) /(144*g1(2))
v2=g2(1) *g2(4) *g2(3) /(144*g2(2))
v3=g3(1) *g3(4) *g3(3) /(144*g3(2))
vm=v1+v2+v3
Tm=(g1(1) *g1(5) *g1(3) +g2(1) *g2(5) *g2(3) +g3(1) *g3(5) *g3(3) )/(g1(1) *g1(5) +g2(1) *g2(5) +g3(1) *g3(5))
Pm=(g1(1) *g1(4) +g2(1) *g2(4) +g3(1) *g3(4)) *Tm/(vm*144)
ds1=g1(1) *(g1(5) *log(Tm/g1(3)) +g1(4) /778 *log(vm/v1))
ds2=g2(1) *(g2(5) *log(Tm/g2(3)) +g2(4) /778 *log(vm/v2))
ds3=g3(1) *(g3(5) *log(Tm/g3(3)) +g3(4) /778 *log(vm/v3))
ds=ds1+ds2+ds3
//results
printf("Pressure = %.1f lb/in^2",Pm)
printf("\n Temperature = %d R",Tm)
printf("\n Entropy change = %.4f B/R",ds)
