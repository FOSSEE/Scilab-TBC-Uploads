clc
//

//Variable declaration
P = 120                                             //Maximum allowable tension force 
s = 175                                             //Maximum allowable stress
t = 100                                             //Maximum allowable stress
Sb = 350                                            //Maximum allowable stress


//Calculation
//Case(a)
F1=P/2         //Current(A)
d=sqrt(((P/2.0)*1000)/((22/(4*7.0))*(100000000)))  //Diameter of bolt(m)
d=d*1000                                            //Diameter of bolt(mm)
d=(d)                                        //Rounding of the value of diameter of bolt(mm)

Ad=(0.020*0.028)                                    //Area of cross section of plate                                    
tb=((P*1000)/Ad)/(1000000)                          //Stress between between the 20-mm-thick plate and the 28-mm-diameter bolt
tb=(tb)                                      //Rounding of the above calculated stress to check if it is less than 350

a=(P/2)/((0.02)*(175))                              //Dimension of cross section of ring 
a=(a)                                        //Rounding dimension of cross section of ring to two decimal places

b=28 + (2*(a))                                      //Dimension b at Each End of the Bar
b=(b)                                        //Rounding the dimension b to two decimal places 

h=(P)/((0.020)*(175))                               //Dimension h of the Bar
h=(h)                                        //Rounding dimension h of bar to 1 decimal place



//Result
printf("\n Case(a): Diameter of the bolt = %.f mm' ,d)
printf("\n Case(b): Dimension b at Each End of the Bar = %.f mm' ,b)
printf("\n Case(c): Dimension h of the Bar = %f mm' ,h)
