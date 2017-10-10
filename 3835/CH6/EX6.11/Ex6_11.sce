clear
//
kva=10000
pf=0.8
iloss=75
closs=150
a=0.5
//case a
po=kva*pf
loss=75+150
n=po/(po+loss)
printf("\n %0.3f ",n)
//case b
i2=(10*1000)/(200)
i1=i2+((10*1000)/400)
kvar=(600*50)/1000
printf("\n %0.3f ",kvar)
po=30*0.8
n=1-(0.225/24)
printf("\n %0.3f ",n)
