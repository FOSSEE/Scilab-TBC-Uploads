clc
//Given that 
c = 3e8 // speed of light in m/s
m = 1 // let 
m_change = 1 // change in mass in percentage by increasing velocity
// sample problem 20 page No. 230
printf("\n \n\n # Problem 20 # \n")
printf("\n Standard formula used \n m = m_o* sqrt ( 1- (v/c)^2) ")
v = c * sqrt (1 - (m / (m + m_change/100))^2) // calculation of Velocity required to increase mass by one percent
printf ( "\n Velocity required to increase mass by one perfect is %e m/s.", v)
