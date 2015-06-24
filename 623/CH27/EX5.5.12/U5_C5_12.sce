//variable initialization
v1=288600                                                                       //intense absorption (m-1)
v2=566800                                                                       //intense absorption (m-1)
v3=834700                                                                       //intense absorption (m-1)
A=[1 -2;2 -6];                                                                  //coefficient matrix
b=[v1;v2];                                                                      //right hand side matrix
mu=1.61*10^-27;                                                                 //reduced mass (kg)
c=3*10^8;                                                                       //speed of light (m/s)

//calculation
x=inv(A)*b;                                                                     //values of omega and x*omega (m-1)
k=4*(%pi*c*x(1))^2*mu;                                                          //force constant (N/m)

printf("\nωe = %.0f m-1\nxe*ωe = %.0f m-1\nforce constant = %.1f N/m",x(1),x(2),k);
