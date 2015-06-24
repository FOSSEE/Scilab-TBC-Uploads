clear;
//clc();

// Example 9.8
// Page: 229
printf("Example-9.8  Page no.-229\n\n");

//***Data***//
// In this solution we will give the identity to the three species as
// a- Acetone 
// b- Methanol
// c- Water
// Given
x_a = 0.1200;
x_b = 0.1280;
x_c = 0.7520;
Temp = 66.70;//[C]
P = 1;//[atm]  pressure
// As reported in the book that from [5] we get the following values 
// acetone-methanol(a-b)
A_ab = 0.2634;
A_ba = 0.2798;
// acetone-water(a-c)
A_ac = 0.9709;
A_ca = 0.5579;
// methanol-water(b-c)
A_bc = 0.3794;
A_cb = 0.2211;
// Now consider the equation 9.10 (page 228) 
// The first term on the right of the equation is
T_1 = x_b^(2)*(A_ab+2*x_a*(A_ba-A_ab));
// similarily the second and third terms are given respectively as 
T_2 = x_c^(2)*(A_ac+2*x_a*(A_ca-A_ac));
T_3 = x_b*x_c*(0.5*(A_ba+A_ab+A_ac-A_bc-A_cb)+x_a*(A_bc-A_ab+A_ca-A_ac)+(x_b-x_c)*(A_bc-A_cb)-(1-2*x_a)*0.00);
// thus whole term on the right hand side is
T = T_1+T_2+T_3;
// So 
y_a = 10^(T);
// for this temperature vapour pressure of the acetone is calculated as 
p_acetone = 1.417;//[atm]
// So that we estimate
y_acetone = x_a*y_a*p_acetone;
printf("The activity coefficient of acetone in the given mixture is %f",y_a);
// The experimental value is y_acetone  = 0.698
