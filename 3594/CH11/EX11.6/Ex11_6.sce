
clc
//given
Tb=75
Tc=18
Td=17
Te=71
N1=500//rpm
k=Tb*Td/(Tc*Te)//k=Ne/Nb
//case a)
//using componendo and dividendo , Nb=0 and reducing we get
a=1-k//a=Ne/Na
Na=N1
Ne=Na*a
//case b)
Na1=500//given
Nb1=100//given
Ne1=k*(Nb1-Na1)+Na1
printf("\ncase a) Ne= %.3f rpm\ncase b) Ne= %.1f rpm\n",Ne,Ne1)
