//chapter12,Example12_4,pg 358

NA=0.5

n1=1.48

n2=sqrt((n1^2)-(NA^2))

printf("refractive index of cladding\n")

printf("n2=%.2f ",n2)

alpha=asin(NA)

alpha=alpha*(180/%pi)

printf("\nacceptance angle\n")

printf("alpha=%.2f deg",alpha)