clear
//given
//find the total weight of a given temperature and velocity
//
v=9500.
p=5.
t=180.
V=v/(12.**3)
//normal barometric pressure 14.7
bP=p+14.7
bP1=144.*bP
//640 is total temperature conveting into k
W=(bP1*V)/(53.3*640.)

printf("\n \n total weight %.2f ",W)
