//Exa 8.10
clc;
clear;
close;
//Given data : 
p1=(100-96)/100;//unitless
p2=(96-89)/100;//unitless
p3=(89-68)/100;//unitless
p4=(68-37)/100;//unitless
p5=(37-13)/100;//unitless
p6=(13-0)/100;//unitless
N0=1000;//no. of resistors
N1=N0*p1;//no. of resistors
N2=N0*p2+N1*p1;//no. of resistors
N3=N0*p3+N1*p2+N2*p1;//no. of resistors
N4=N0*p4+N1*p3+N2*p2+N3*p1;//no. of resistors
N5=N0*p5+N1*p4+N2*p3+N3*p2+N4*p1;//no. of resistors
N6=N0*p6+N1*p5+N2*p4+N3*p3+N4*p2+N5*p1    ;//no. of resistors
//Calculation of individual replacement cost
Life=0;//in months
p=[p1 p2 p3 p4 p5 p6];//Unitless
for i=1:6
    Life=Life+i*p(i);
end
disp(Life,"Expected life of each transistor in months : ")
disp(round(1000/Life),"Average No. of failures/month :  ");
disp(round(1000/Life)*10,"Therefore, cost of individual replacement in Rs. : ")


//Calculation of group replacement cost
disp("Cost/transistor when replaced simultaneously = Rs. 4");
disp("Cost/transistor when replaced individually = Rs. 10");
disp("The cost of group replacement policy for several replacement periods are summarized in Table 8.7. This table can be seen from the book.");
disp("From table it is clear that the avg cost/month is minimum for the 3rd month. Hence, the group replacement period is 3 months.");
disp("Individual replacement cost/month = Rs. 2480");
disp("Minimum group replacement ost/month = Rs. 2426.67");
disp("Since the min group replacement cost/month is less than the individual replacement cost/month, the group replacement policy is the best, and hence all the transistors should be replaced in 3 months.")