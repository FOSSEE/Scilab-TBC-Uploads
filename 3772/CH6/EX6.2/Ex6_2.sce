// Problem no 6.2,Page No.155

clc;clear;
close;

L=6 //m //Length of beam
y_b=1.5*10**-2 //m //Deflection
E=2*10**7*10**4
sigma=10*10**3*10**4
//d=2*b

//Calculations

//Let w*I**-1=X    //From Deflection at the free end Equation 
X=y_b*8*E*(L**4)**-1*10**-3    //Equation 1

//Let w*b*I**-1=Y     //From Max bending stress at the extreme fibre From N.A
Y=sigma*2*(L**2)**-1           //Equation 2
                                
b=Y*X**-1  //width of beam //mm
d=2*b      //depth of beam //mm
                                
//Result
printf("The Dimension of Beam are:\n\t\t\t  b=%.2f mm (width)\n\t\t\t  d=%.2f mm (depth)",b,d)
