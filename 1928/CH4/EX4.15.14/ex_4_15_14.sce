//Chapter-4,Example4_15_14,pg 4-33

f=50*10^3                               //frequency

v1=348                                  //velocity of ultrasound in atmosphere

v2=1392                                 //velocity of ultrasound in sea water

t=2                                     //time difference

//distance is constant hence v1*t1=v2*t2

m=v2/v1                                 //assuming constant as m

//(t1-t2=d) and (t1=m*t2) therefore

t2=t/(m-1)

d=v2*t2                                 //distance between two ship

printf("distance between two ships =")

disp(d)

printf("meter")