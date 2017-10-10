
//

//

aa=1.725
ab=2.245
ba=2.145
bb=3.045
dAB=200
rla=450.0
AB=ab-aa
printf("\n AB")
adif=bb-ba

printf("\n apparent difference of level = %0.3f meters',adif)

//a
td=(AB+adif)/2
printf("\n true difference of level= %0.3f meters',td)
//b

tb=bb
ta=bb-td

printf("\n true reading on A= %0.3f meters',ta)

//c

e=ba-ta

printf("\n collimation error = %0.3f meters',e)

//d

rlb=rla-td
printf("\n RL of B= %0.3f meters',rlb)
