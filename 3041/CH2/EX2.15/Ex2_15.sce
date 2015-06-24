

//Variable declaration
Vp=-4                    //peak voltage(V)
Idss=10                  //drain current for Vgs(V)
Vdd=18                   //drain voltage(V)   
Rs=2               //source resistance(ohms) 
Rd=2               //drain resistance(ohms)
R1=450*10**3             //resistance(ohms)
R2=90*10**3              //resistance(ohms)

//Calculations
Vgg=(R2*Vdd)/(R1+R2)
syms Id
expr=solve([20*Id**2-148*Id+245],[Id])
disp (expr)
Id1=2.5
Vds=Vdd-((Rs+Rd)*Id1)

//Result
printf ("Id is %.1f mA and Vds is %.1f V",Id1,Vds)
