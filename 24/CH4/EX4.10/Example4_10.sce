//To convert velocity m/s from km/h
conv = 5/18

//Given that
v_BA = 52   //in km/hr
v_PA = -78  //in km/hr

//Sample Problem 4-10a
printf("**Sample Problem 4-10a**\n")
//using concept of relative velocity
v_PB = v_PA - v_BA
printf("The velocity of P as measured by Barbara is %d km/hr\n",v_PB)

//Sample Problem 4-10b
printf("\n**Sample Problem 4-10b**\n")
//In frame of Alex
delta_t = 10  //in sec
a_PA = (0 - v_PA)* conv/delta_t
printf("The accleration of P in frame of Alex is %f m/s^2\n", a_PA)

//Sample Problem 4-10c
printf("\n**Sample Problem 4-10c**\n")
a_BA = 0
a_PB = a_PA - a_BA
printf("The acceleration of P as measured by B is %f m/s^2", a_PB)