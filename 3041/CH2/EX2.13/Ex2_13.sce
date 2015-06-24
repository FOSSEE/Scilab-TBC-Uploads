
//Variable declaration
K=2                      //device parameter
Rd=2.5*10**3          //drain resistance(k ohms)
Rs= Rd
R1=100*10**3             //resistance(ohms)
R2=200*10**3             //resistance(ohms)
Vdd=12                   //drain voltage(V)
Vt=4                     //threshold voltage(V)

//Calculations
Vgg=(R2*Vdd)/(R1+R2)
syms Id
expr=solve([Id**2-3.28*Id+2.56],[Id])
disp(expr)
Id=1.28
Vds=Vdd-5*Id

//Result
printf ("Id is %.2f mA and Vds is %.1f V",Id,Vds)
