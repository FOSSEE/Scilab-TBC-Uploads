// Example 34_28
clc;funcprot(0);
//Given data
P=30;// kW
C_a=60000;// Cost of motor A in rupees 
C_b=40000;// Cost of motor B in rupees
n_a=90;// Efficiency of motor A at full load 
n_b=85;//  Efficiency of motor B at full load 
n_50a=86;// Efficiency of motor A at 50% load 
n_50b=82;// Efficiency of motor B at 50% load 
N=20;// Life of each motor
I=5/100;// Interest 
T=25;// Time in %
Mc_a=4200;// The annual maintainence cost of motor A in rupees
Mc_b=2400;// The annual maintainence cost of motor B in rupees
Er=1;// Energy rate in Re./kWh

//Calculation
//(a)
SV=(10/100)*C_a;// Salary value in rupees
D=(C_a-SV)/N;// Depriciation in Rs./year
I=(5/100)*C_a;// Interest in  Rs./year
E=((P/1)*(8760*(T/100)*(1/(n_a/100))))+((P/2)*(8760*((100-T)/100)*(1/(n_50a/100))));// Energy cost in rupees
Tc_a=D+I+Mc_a+E;// Total cost of motor A
//(b)
SV=(10/100)*C_b;// Salary value in rupees
D=(C_b-SV)/N;// Depriciation in Rs./year
I=(5/100)*C_b;// Interest in  Rs./year
E=((P/1)*(8760*(T/100)*(1/(n_b/100))))+((P/2)*(8760*((100-T)/100)*(1/(n_50b/100))));// Energy cost in rupees
Tc_b=D+I+Mc_b+E;// Total cost of motor B
printf('\nTotal cost of motor A=Rs.%0.0f/year \nTotal cost of motor B=Rs.%0.0f/year',Tc_a,Tc_b);
if(Tc_a<Tc_b)
    printf('\nMotor A is recommended as its annual cost is less than motor B.');
else(Tc_b<Tc_a)
    printf('\nMotor B is recommended as its annual cost is less than motor A.');
end
// The answer vary due to round off error
