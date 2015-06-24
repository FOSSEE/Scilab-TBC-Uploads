clc;
//Example 25.3
//page no 372
printf("Example 25.3 page no 372\n\n");
//air flows across a packed bed 
d_p=1.5//diamter of cylinderical particles,cm
h=2.5//height ,cm
V_p=%pi*d_p^2*h/(4)//volume of the cylinderical particles
S_p=%pi*d_p*h + 2*(%pi*d_p^2/4)//cylinderical particle surface area,cm^2
a_p=S_p/V_p//particle specific surface 
printf("\n particle specific surface a_p =%f cm^-1 ",a_p);
d_p_e=6/a_p//effective particle diameter
printf("\n effective particle diameter d_p_e=%f cm",d_p_e);

