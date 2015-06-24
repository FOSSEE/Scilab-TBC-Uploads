//Given that
conv = 5/18  //converts velocity from km/h to in m/s
speed_initial = 100 * conv  //in km/h
speed_final = 80 * conv   //in km/h
displacement = 88  //in meter

//Sample Problem 2-5a
printf("**Sample Problem 2-5a\n")
//using newton's 3rd equation of motion
acceleration = (speed_final^2 - speed_initial^2)/(2 * displacement)
printf("The acceleration is equal to %f m/sec^2\n", acceleration)

//Sample Problem2-5b
printf("\n**Sample Problem 2-5a**\n")
//using newton's first equation of motion
time = (speed_final - speed_initial)/acceleration
printf("The time taken to decrease the speed is %f sec", time)