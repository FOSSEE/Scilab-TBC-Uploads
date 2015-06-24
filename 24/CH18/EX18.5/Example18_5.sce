//Given that
B2 = 120  //in dB
B1 = 92  //in dB

//Sample Problem 18-5
printf("**Sample Problem 18-5**\n")
//B2 = 10 * log(I2/Io)
//B1 = 10 * log(I1/Io)
r = 10^((B2 - B1)/10)  //The ratio
printf("The Ratio of the intensities is %f", r)