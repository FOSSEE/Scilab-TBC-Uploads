//Variable declaration:
a = 1.3*10^-3                      //Constant a
B = 0.77                            //Constant B
syms t                              //Time (h)
Ft = a*B*t^(B-1)*(exp(-a*t^B))     //Pdf for heat exchanger tube
Pt = eval(integrate(Ft, "t",0,1000))      //Probability that a heat exchanger will fail within 100 hours

//Result:
printf("The probability that a tube in a heat exchanger will fail in 1000 hours is : %.2f",Pt)
