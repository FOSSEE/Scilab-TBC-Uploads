clear;
clc;
printf("\t\t\tExample Number 9.5\n\n\n");
// water boiling in a pan 
// Example 9.5(page no.-506-507)
// solution

p = 101325/10^(6);// [MPa] pressure of water 
dT_x = 8;// [degree celsius]
p1 = 0.17;// [MPa] given operating pressure
// we will use the simplified relation of table 9-13(page no.-506) for the estimates.we do not know the value of q_by_A and so must choose one of the two relation for a horizontal surface from the table
// we anticipate nucleate boiling, so choose
h = 5.56*dT_x^(3);// [W/square meter degree celsius]
// and the heat flux is 
q_by_A = h*dT_x;// [W/square meter]
// for operation as a pressure cooker we obtain the value of h from equation(9-44)
hp = h*(p1/p)^(0.4);// [W/square meter degree celsius]
// the corresponding heat flux is 
q_by_A1 = hp*dT_x;// [W/square meter]
printf("heat flux obtained is %f kW/square meter",q_by_A/1000);
per_inc = 100*(q_by_A1-q_by_A)/q_by_A;
printf("\n\n if the pan operates as a pressure cooker at 0.17 MPa the increase in heat flux is %f percent",per_inc);
