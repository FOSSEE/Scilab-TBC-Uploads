clear
//
//given
i=35
v=220
ra=0.15
n1=1600
//when motor is running at 1200rpm the back emf eb1 is given by eb1=v-(35*0.15)
eb1=214.75
//flux phy1 is proportional to armature current ia.Thus, at ia1=35 and ia2=15 n is proportional to eb/phy
//2=(eb2*phy1)/(phy2*eb1)
//therefore
eb2=184.07
//case a
//resistance to be connected in series is rse ohm
ia2=15
rse=((v-eb2)/ia2)-ra
printf("\n rse= %0.1f  ohm",rse)
//case b
eb2=0.5*1.15*214.75
ia2=50
rse=((v-eb2)/ia2)-ra
phy1=35
eb2=220-50*0.15
n2=(n1*eb2*phy1)/(1.15*phy1*eb1)
printf("\n n2= %0.1f  rpm",n2)
