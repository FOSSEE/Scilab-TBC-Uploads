//Variable declaration:
Q = 56760                           //Heat transfer rate (Btu/h)
U = 35.35                           //Overall heat coefficient (Btu/ft.h..)
A = 32.1                            //Area of exachanger (ft^2)
t1 = 63.0                           //Outlet cold water temperature (.)
T1 = 164                            //Outlet hot water temperature (.)
T2 = 99                             //Inlet hot water temperature (.)
syms t2                           //Inlet cold water temperature (.)

//Calculation:
DTlm = Q/(U*A)                      //Log mean temperature difference (.)
dT1 = T1-t1                         //Temperature approach at pipe outlet (.)
dT2 = T2-t2                         //Temperature approach at pipe inlet (.)
Eq = (dT2-dT1)/log(dT2/dT1)-DTlm
R = eval(subst(0,t2,Eq))                    //Inlet cold water temperature (.)

//Result:
disp("The inlet cold water temperature is : ")
disp(round(R))

// There is some mistake in calculation in book. Please calculate manually.
