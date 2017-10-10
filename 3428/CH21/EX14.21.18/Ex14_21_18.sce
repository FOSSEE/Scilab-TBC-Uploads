//Section-14,Example-5,Page no.-PC.31
//To calculate volume using Ideal gas equation and vander walls equation
clc;
n=3                    //mol
R=0.0821                        //Latm/molK
T=373                    //K
P=50                           //atm
V_1=((n*R*T)/P)
disp(V_1,'Volume according to Ideal gas equation(L)')
a=1.36                            //L^2atm/mol^2
b=0.0318                          //L/mol
V_2=((n*R*T)/(P+((a*n^2/V_1^2))))
disp(V_2,'Volume according to Vanderwall`s gas equation(L)')


//Answer in the book(V_2=1.81 L)is wrong.

