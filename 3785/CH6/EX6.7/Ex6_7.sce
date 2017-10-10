// Example 6_7
clc;funcprot(0);
// Solution
// P_out=(3*%pi*mu*W*omega^2*D^3)/(16*h);
// P_in=(5*%pi*mu*W*omega^2*D^3)/(8*h);
// n_p=P_out/P_in;
n_p=(((3*%pi)/16)/((5*%pi)/8))*100;//The pump efficiency in %
printf("\nThe pump efficiency,n_p=%0.0f percentage",n_p);
