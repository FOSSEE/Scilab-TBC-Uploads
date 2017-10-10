clear
//
//given
//as per step up tranformer
v1=220
v2=6600
f=50
vturn=2.5
kva=10000
//case a
a=v1/(v2)
printf("\n %0.3f ",a)
//as per step down case b
v1=6600
v2=220
a=v1/v2
printf("\n %0.3f ",a)
//case c
//high voltage soil
n=v1/(vturn)
printf("\n number of turns of high voltage soil= %0.1f  ",n)
//low voltage soil
n1=v2/(vturn)
printf("\n number of turns of high voltage soil= %0.1f  ",n1)
//case d
i=kva/(v1)
printf("\n primary current as a step down transformer is= %0.1f  A",i)
//case e
i=kva/(v2)
printf("\n secondary current as a step down transformer is= %0.1f  A",i)
