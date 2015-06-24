clc
//ex2.23
R_1=1*10^3;
//case (a)
disp('case a:')
R_2=10*10^3;
R_3=732;
R_x=R_2*R_3/R_1;      //wheatstone bridge condition
disp(R_x,'Value of Rx in ohms')
//case (b)
disp('case b:')
//R_x is maximum when both R_2 and R_3 are maximum
R_2_max=1*10^6;
R_3_max=1100;
R_x_max=R_2_max*R_3_max/R_1;      //wheatstone bridge condition
disp(R_x_max,'Maximum value of Rx in ohms')
//case(c)
disp('case c:')
//increment in R_x is scale factor times increment in R_3
R_2=1*10^6;
R_3_inc=1;      //increment in R_3
R_x_inc=R_2*R_3_inc/R_1;      //increment in R_x from bride balance condition
disp(R_x_inc,'Increment between values of Rx in ohms for the bridge to be balanced')
