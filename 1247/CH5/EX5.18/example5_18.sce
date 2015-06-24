clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.18
// Page 243
printf("Example 5.18, Page 243 \n \n");

// solution

Ts1 = (438.2+436)/2
Ta = 300
fi1 = .045*(Ts1-Ta)*3600
theta1 = 307293/fi1  //h
Ts2 = (436+434)/2
fi2 = .045*(Ts2-Ta)*3600
theta2 = 302415/fi2
Ts3 = (434+432.1)/2
fi3 = .045*(Ts3-Ta)*3600
theta3 = 313859/fi3
theta = theta1+theta2+theta3
printf(" total time required = "+string(theta)+" hrs.")
