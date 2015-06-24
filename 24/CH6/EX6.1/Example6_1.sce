//Given that
mu_k = 0.6
d = 290  //in meter
g = 9.8 //in m/s^2
v_final = 0

//Sample Problem 6-1
printf("**Sample Problem 6-1**\n")
//using newton's 3rd equation of motion
ac = - mu_k * g  //due to friction hence a negative sign
v_initial = sqrt(v_final^2 - 2 * ac * d)
printf("The inital velocity of that car would have been %f m/s", v_initial)