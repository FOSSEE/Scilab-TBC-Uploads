// Example 34_3
clc;funcprot(0);
//Given data
C=40000;//Capital cost in Rupees
V_1=4000;// Salvage value in Rupees
n=20;// Useful life in years
r=6/100;//Interest rate

//Calculation
//(a)
TD=C-V_1;//Total depreciation in rupees
D=TD/2;//Depreciation in 10 years in rupees
V_2a=C-D;//Plant value at the end of 10 years in rupees
//(b)
// Assume  p_d=(1-p)
p_d=(V_1/C)^(1/n);
n=10;// Plant life in years
V_2b=C*(p_d)^(n);// Plant value at the end of 10 years in rupees
//(c)
n=20;// Plant life in years
Q=C-V_1;// Replacement cost  in rupees
q=(Q*r)/(((1+r)^n)-1);//The amonut set aside per year
n=10;// Plant life in years
Q=(q*(((1+r)^n)-1))/(r);// The amount deposited in sinking fund in rupees
V_2c=C-Q;// Plant value at the end of 10 years in rupees
printf('\n(a)Plant value at the end of 10 year,V_2=Rs.%0.0f\n(b)Plant value at the end of 10 year,V_2=Rs.%0.0f\n(c)Plant value at the end of 10 year,V_2=Rs.%0.0f',V_2a,V_2b,V_2c)
// The answer vary due to round off error
