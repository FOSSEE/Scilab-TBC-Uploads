 clear
//
//case a
f=150
p=2
//assume the diameter of the stator bore is d meter
n=120*50/2  //where n is rotor speed
printf("\n n= %0.0f  rpm",n)
pi=3.14
d=(120*60)/(%pi*3000)  
printf("\n D= %0.3f  m",d)
//case b
k=2
l=1
o=k*d**2*n*l
printf("\n output of the alternator= %0.3f  KVA",o)
