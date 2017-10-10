clear
//
//given and 1.732 is the value of root 3
v=6600
i=10
n=15
//case a
v2l=v/n
printf("\n v2l= %0.1f  V",v2l)
i1p=10/1.732
i2p=i1p*n
printf("\n i2p= %0.1f  A",i2p)
i2l=n*i1p*1.732
printf("\n i2l= %0.1f  A",i2l)
//case b
v2p=v/(n*1.732)
printf("\n v2p= %0.1f  V",v2p)
v2l=v2p*1.732
printf("\n v2l= %0.1f  V",v2l)
printf("\n i2p=i2l= %0.1f  A",i2p)
//case c
v2p=v/n
printf("\n v2p= %0.1f  V",v2p)
v2l=(v*1.732)/n
printf("\n v2l= %0.1f  V",v2l)
i1p=i/1.732
printf("\n i2p= %0.1f  A",i2p)
//case d
v1p=v/1.732
printf("\n v2p= %0.1f  V",v2p)
i1p=10
i2p=i1p*n
printf("\n i2p= %0.1f  A",i2p)
i2l=i2p*1.732
printf("\n i2l= %0.1f  A",i2l)
