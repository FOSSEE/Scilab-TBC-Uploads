clc
//

//Variable declaration
Fac = 750                             //Force on rod AC(lb)
D = 0.375                             //Diameter at the upper junction of rod ABC(in)


//Calculation         
//Case(a)
A=(1/4.0)*((%pi)*(D**2))   //Area at the upper junction of rod ABC(in^2) 
tA=(Fac/A)                            //Shearing Stress in Pin A(psi)   
//Case(b) 
Ab=(1/4.0)*((%pi)*(0.25**2))    //Area at the lower junction of rod ABC(in^2)
tC=(((1/2.0)*Fac)/Ab)                 //Shearing Stress in Pin C(psi)
//Case(c)
Anet=(3/8.0)*(1.25-0.375)             //Area of cross section at A(in^2)
sA=(Fac/Anet)                         //Largest Normal Stress in Link ABC(psi)
//Case(d)
F1=750/2                              //Force on each side(lb)
Ad=(1.25*1.75)                        //Area at junction B(in^2)
tB=(F1/Ad)                            //Average Shearing Stress at B
//Case(e)
Ae=0.25*0.25                          //Area at point C(in^2)
sB=(F1/Ae)                            //Bearing Stress in Link at C


//Result
printf("\n Case(a): Shearing Stress in Pin A = %.1f psi' ,tA)
printf("\n Case(b): Shearing Stress in Pin C = %.f psi' ,tC)
printf("\n Case(c): Largest Normal Stress in Link ABC = %.f psi' ,sA)
printf("\n Case(d): Average Shearing Stress at B = %.f psi' ,tB)
printf("\n Case(e): Bearing Stress in Link at C = %.f psi' ,sB)
