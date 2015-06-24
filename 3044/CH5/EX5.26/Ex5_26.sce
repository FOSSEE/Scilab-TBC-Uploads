// Variable declaration
Mean = 50         // Mean of normal distribution
std_dev = 5       // standard deviation of normal distribution

// Calculation
// Computer generates 2 values 0.253 and 0.531 from uniform distribution(can be obtained by reading 3 digits at a time in TABLE-7
u1 = 0.253
u2 = 0.531

// As we know z1 = sqrt(-2*ln(u2)) * cos(2*pi*u1)  and z2 = sqrt(-2*ln(u2)) * sin(2*pi*u1)
Z1 = sqrt(-2 * (log(u2))) *( cos(2*%pi*u1) )

Z2 = sqrt(-2 * (log(u2))) *( sin(2*%pi*u1) )

// normal values x1 = Mean + std_dev*Z1  and x2 = Mean + std_dev*Z2
X1 = Mean + std_dev*Z1 
X2 = Mean + std_dev*Z2 

// Result
printf ( " Normal values : %.3f , %.3f",X1,X2)
