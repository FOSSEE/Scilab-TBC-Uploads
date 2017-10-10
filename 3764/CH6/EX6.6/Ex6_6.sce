clc
//
//

//Variable declaration
V=2.5                                                                             // Force(kips)
b=4                                                                               // Distance(in)
t=0.15                                                                            // Thickness(in)
h=6                                                                               // Height(in)


//Calculation         
tB=(6*V*b)/((t*h)*(6.0*b+h))                                                        // Horizontal shearing stress(ksi)
tMAX=(3*(V)*(4*b+h))/(2.0*t*h*(6.0*b+h))                                              // Shearing stress in web(ksi)

// Result
printf("\n Shearing stress in flanges = %0.3f ksi' ,tB)
printf("\n Shearing stress in web = %0.3f ksi' ,tMAX)
