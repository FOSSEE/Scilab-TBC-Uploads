
//ch-5 page 187  pb-3

//
//

dAB=100

aa=1.875
ab=1.790

le=10

ba=1.630
bb=1.560


td=aa-ab

apd=ba-bb
printf("\n first setting')
printf("\n true difference is %0.3f meters',td)
printf("\n apparent difference of level = %0.3f meters',apd)

printf("\n second setting')

A=ba-td

e1=bb-A

cA=(le/dAB)*e1
cB=((le+dAB)/dAB)*e1
printf("\n collimation error is %0.3f meters',e1)
printf("\n correction at A= %0.3f meters',cA)
printf("\n correction at B= %0.3f meters',cB)
