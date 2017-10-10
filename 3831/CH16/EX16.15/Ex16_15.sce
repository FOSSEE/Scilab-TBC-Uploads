// Example 16_15
clc;funcprot(0);
// Given data
M_in=0.890;// The inlet Mach number
p_osi=314.7;// kPa
p_ose=249.3;// kPa
k=1.40;// The specific heat ratio

// Calculation
// (a)
n_D=(((((1+((((k-1)/2)*M_in^2)))*(p_ose/p_osi)^((k-1)/k)))-1)/(((k-1)*M_in^2)/2))*100;// %
// (b)
p_i=p_osi/((1+(((k-1)/2)*M_in^2))^(k/(k-1)));// kPa
C_p=(p_ose-p_i)/(p_osi-p_i);// The diffuser’s pressure recovery coefficient
printf("\n(a)The diffuser’s efficiency,n_D=%2.1f percentage \n(b)The diffuser’s pressure recovery coefficient,C_p=%0.3f",n_D,C_p);
