clear
//

//A material has strength in tension, compression and shear as 30N/mm2, 90 N/mm2 and 25 N/mm2, respectively. If a specimen of diameter 25 mm is tested in tension and compression identity the failure surfaces and loads. 

//variable declaration

//In tension: Let axial direction be x direction. Since it is uniaxial loading, py  = 0, q = 0 and only px exists.when the material is subjected to full tensile stress, px = 30 N/mm^2.

pt=(30)
pc=(90)
ps=(25)

d=(25)
px=(30)         //N/mm^2
py=0
q=0
p1=(px+py)/2+sqrt((((px-py)/2)**2)+(q**2))

p2=(px+py)/2-sqrt((((px-py)/2)**2)+(q**2))

qmax=(px-py)/2

//Hence failure criteria is normal stress p1

A=%pi*(d**2)/4

//Corresponding load P is obtained by
p=p1
P=p1*A

printf("\n (a) P= %0.2f  N",P)

//In case of compression test,

px=-pc

P=-px*A

printf("\n (b) P= %0.2f  N compressive",(-P))

//at this stage

qmax=sqrt((((px-py)/2**2))+(q**2))

printf("\n Material fails because of maximum shear and not by axial compression.")
qmax=25
px=2*qmax

P=px*A
printf("\n P= %0.0f  N",P)
printf("\n The plane of qmax is at 45° to the plane of px. ")
