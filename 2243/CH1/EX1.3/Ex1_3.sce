clc();
clear;
//Given:
//(a) 
lc = 0.1// least count in cm
c = 6.9 //Circumference c in cm
r= 1.1 // radius of circle in cm
val =2*%pi;
// Circumference,c= 2*pi*r or  c/r = 2*pi
// Error in c/r is , delta(c/r)= [(c/r^2)+(1/r)](LC/2) , LC is Least Count .
E= ((c/r^2)+(1/r))*(lc/2);//Error in c/r is delta(c/r)
ob = c/r; // Observed Value
//Actual Value of c/r ranges between
ac1 = ob-E;// Evaluating Minimum value for c/r 
ac2 = ob+E;// Evaluating Maximum value for c/r
p = (E/ob)*100; //Evaluating percentage error
printf("(a)Actual Value of c/r ranges between %.2f - %.2f and Percentage error =  %.2f percentage.\n ",ac1,ac2,p);
//(b)
lc1 = 0.001;//Now the least count is 0.001 cm
c1 = 6.316;//Circumference in cm
r1=1.005;//Circle radius in cm 
E1 =((c1/r1^2) + (1/r1))*(lc1/2); // Error in c/r is delta(c/r)
ob1= c1/r1; //Observed Value
p1=(E1/ob1)*100;//Evaluating percentage error
//Actual Value of c/r ranges between
a1= ob1-E1;//Evaluating Minimum value for c/r
a2= ob1+E1;//Evaluating Maximum value for c/r
printf("(b)Actual Value of c/r ranges between %.3f - %.3f and Percentage error = %.2f percentage.\n",a1,a2,p1);

