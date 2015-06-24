//variable initialization
v1=214330                                                                       //fundamental band for CO molecule (m-1)
v2=425970                                                                       //first overtone for CO molecule (m-1)
A=[1 -2;2 -6];                                                                  //coefficient matrix
b=[v1;v2];                                                                      //right hand side matrix

//calculation
x=inv(A)*b;                                                                     //values of omega and x*omega (m-1)

printf("\nωe = %.0f m-1\nxe*ωe = %.0f m-1",x(1),x(2));
