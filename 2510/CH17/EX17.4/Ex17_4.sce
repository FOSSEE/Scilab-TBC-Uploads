//Variable declaration:
L = 3.0*0.0254                  //Height of fin (m)
t = 1.0*0.0254                  //Thickness of fin (m)
h = 15.0                        //Heat transfer coefficient (W/m^2.K)
k = 300.0                       //Thermal conductivity (W/m.K)

//Calculation:
Lc = L + t/2.0                  //Corrected height of fin (m)
Ap = Lc*t                       //Profile area of fin (m^2)
x = sqrt((Lc**3*h)/(k*Ap))      //x-coordinate of figure 17.3
//From figure 17.3:
nf = 98.0                       //Fin efficiency

//Result:
printf("The fin efficiency is : %f %%",nf)
