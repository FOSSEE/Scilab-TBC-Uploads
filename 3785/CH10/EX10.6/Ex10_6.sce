// Example 10_6
clc;funcprot(0);
// Given data
C_Du=1.4;// Drag coefficient of the upwind facing cup
C_Dd=0.4;// Drag coefficient of the downwind facing cup

// Calculation
omegaRbyV=sqrt((C_Du-C_Dd)/(C_Du+(4*C_Dd)));// The dimensionless angular speed
printf("\nThe dimensionless angular speed at which the anemometer rotates is %0.4f.",omegaRbyV)
