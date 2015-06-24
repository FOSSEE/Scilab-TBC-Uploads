//Given that
R = 38  //in meter
Mc = 1.1 *10^4  //in kg
Mw = 6.0* 10^5  //in kg
Mp = 70  //in kg
Nc = 36  //number of cars
Np = 60*Nc  //total number of person
Wf = 2*%pi/(2*60)  //in rad/s

//Sample Problem 12-6a
printf("**Sample Problem 12-6a**\n")
Mpc = Mc*Nc + Mp*Np
Ipc = Mpc*R^2
Iw = (Mw/2)*R^2  //considering the mometum due to only the outer hoop
It = Ipc+Iw
L = It*Wf
printf("The angular momentum is %ekg.m/s^2\n", L)

//Sample Problem 12-6b
printf("\n**Sample Problem 12-6b**\n")
//Using the definiiton of the torque
deltat  = 5.0  //in sec
Tavg = L/deltat
printf("The magnitude of average torque is %eN.m", Tavg)