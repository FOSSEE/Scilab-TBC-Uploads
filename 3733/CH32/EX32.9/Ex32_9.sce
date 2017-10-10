// Example 32_9
clc;funcprot(0);
//Given data
L_1=45000;// kW
L_2=5000;//kW
L_34=20000;// Load in kW
L_5=10000;// Load in kW
L_p=5000;

//Calculation
// The energy generated per year by the plant= Area under the load curve
E_g=(8760*L_2)+((1/2)*8760*(L_1-L_2));// kWh/year
L_a=(E_g)/8760;// Average load in kW
MD=L_1;// Maximum demand in kW
F_l=L_a/MD;// Load factor
P=(2*L_34)+(1*L_5);// Plant capacity in kW
CF=(E_g)/(P*8760);
printf('\nLoad factor=%0.2f \nCapacity factor of the plant=%0.1f',F_l,CF);
// The answer vary due to round off error
