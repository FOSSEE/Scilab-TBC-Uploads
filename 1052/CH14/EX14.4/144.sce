clc;
//Example 14.4
//page no 154
printf("Example 14.4 page no 154\n\n");
//for turbulent fluid flow in across section 
//(a) for a rectangle 
w=2//width of a rectangle,in
h=10//height of rectangle,in
S_a=h*w//cross sectional area
P_a=2*h+2*w//perimeter of rectangle
D_eq_a=4*S_a/P_a//equivalent diameter
printf("\n equivalent diameter D_eq_a=%f in",D_eq_a);
//(b) for an annulus 
d_o=10//outer diameter of annulus
d_i=8//inner diameter 
S_b=%pi*(d_o^2-d_i^2)/4//cross sectional area
P_b=%pi*(d_o-d_i)//perimeter
D_eq_b=(4*S_b)/(P_b)//eq. diameter
printf("\n equivalent diameter D_eq_b=%f cm",D_eq_b);
//(c) for an half- full circle
d_c=10//diameter of circle 
S_c=%pi*d_c^2/8// cross sectional area
P_c=%pi*d_c/2//perimeter
D_eq_c=4*S_c/P_c//eq. diameter
printf("\n equivalent diameter D_eq_c=%f cm",D_eq_c); 
