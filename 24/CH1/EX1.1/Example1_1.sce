//Given that
velocityP = 23 //rides per h
c1 = 4  //from ride to stadia
c2 = 6  //from stadia to plethra
c3 = 30.8 //from plethra to meter
c4 = 10^-3  //from meter to kilometer
c5 = 60 * 60  //from h to sec

//Sample Problem 1-1
printf("**Sample Problem 1-1**\n")
velocityC = velocityP * c1 * c2 * c3 * c4 / c5
printf("The speed is %e km/s", velocityC)