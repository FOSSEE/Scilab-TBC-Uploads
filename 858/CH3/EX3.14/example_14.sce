clc
clear 
printf("example 3.14 page number 102\n\n")

//to find the fraction of purged recycle and total yield

//x- moles of N2 and H2 recycled; y - moles of N2 H2 purged

Ar_freshfeed = 0.2;
//argon in fresh feed is equal to argon in purge 

y = 0.2/0.0633;   //argon in purge = 0.0633y
x = (0.79*100 - y)/(1-0.79);
printf("y = %f kmol\nx = %f kmol",y,x)

//part 1
fraction = y/x;
printf("\n\nfration of recycle that is purged = %f",fraction)

//part 2
yield = 0.105*(100+x);
printf("\n\noverall yield of ammonia = %f kmol",yield)
