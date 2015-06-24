// chapter 5 , Example5 6 , pg 152
a=5.64//lattice constant (in Angstrom)
h1=1
k1=0
l1=0 //(h1 k1 l1)=(1 0 0)
h2=1
k2=1
l2=0 //(h2 k2 l2)=(1 1 0)
h3=1
k3=1
l3=1//(h3 k3 l3)=(1 1 1)
d100=a/sqrt(h1^2+k1^2+l1^2)  //spacing of (1 0 0)planes
d110=a/sqrt(h2^2+k2^2+l2^2)  //spacing of (1 1 0)planes
d111=a/sqrt(h3^2+k3^2+l3^2)  //spacing of (1 1 1)planes
printf("spacing of (1 0 0) planes=")
printf("d100=%.2f  Angstrom\n",d100)
printf("spacing of (1 1 0) planes=")
printf("d110=%.2f  Angstrom\n",d110)
printf("spacing of (1 1 1) planes=")
printf("d111=%.2f  Angstrom",d111)
