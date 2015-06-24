//chapter8,Example8_12,pg 193

//for brightest spot R1=sqrt(b*lam)

R1=0.05

lam=5*10^-5

bb=(R1^2)/lam//brightest spot

//for darkest spot

bd=(R1^2)/(2*lam)//darkest spot

printf("position of brightest spot\n")

printf("b=%.2f cm",bb)

printf("\nposition of darkest spot\n")

printf("b=%.2f cm",bd)
