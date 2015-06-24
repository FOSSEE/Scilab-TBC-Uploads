//Given that
W1 = 3.40  //in rad/s
W2 = 2.00  //in rad/s
rev_taken = 20

//Sample Problem 11-3a
printf("**Sample Problem 11-3a**\n")
angle_traversed = 2*%pi*rev_taken
//Using newton's third equation of motion
//Wf^2 = Wi^2 + 2*alpha*theta
alpha = (W2^2 - W1^2)/(2*angle_traversed)
printf("The angular acceleration during the stop is %frads^2\n", alpha)

//Sample Problem 11-3b
printf("\n**Sample Problem 11-3b**\n")
//Using newton's first equation of motion
time_taken = (W2 - W1)/alpha
printf("The time taken in decreasing the speed is %fsec", time_taken)