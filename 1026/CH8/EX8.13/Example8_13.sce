//chapter8,Example8_13,pg 193

lam=6000*10^-10

b1=30//for m=1

b2=6//for m=2

//(1/b)-(1/a)=(n*lam)/(R1^2), b=b1,b2

//from b1,b2 equations 

a=((5*b2)-(3*b1))/2

R1=sqrt(lam/((1/b1)-(1/a)))

F1=(R1^2)/lam

printf("distance of source from zone plate\n")

printf("a=%.2f cm",a)

printf("\nradius of 1st zone plate\n")

printf("R1=%.4f cm",R1)

printf("\nprincipal focal length\n")

printf("F1=%.2f cm",F1)