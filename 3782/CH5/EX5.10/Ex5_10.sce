
//

//

aa=1.155
ab=2.595
ba=0.985
bb=2.415

td=((ab-aa)+(bb-ba))/2

rla=525.5
rlb=rla-td
dab=500
printf("\n true RL of B %0.3f meters',rlb)

dab1=dab/1000

correct=0.0673*dab1*dab1
printf("\n combined corrction for 500m= %0.3f meters',correct)

sc=100
a=1.155
e=-(0.0118*sc)/(dab)


printf("\n collimation error per 100m= %0.3f meters',e)
