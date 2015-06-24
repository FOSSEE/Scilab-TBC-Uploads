
//Variable declaration:
h1 = 1200.0                         //Hot film coefficient (Btu/h.ft^2..)
h2 = 1175.0                         //Cold film coefficient (Btu/h.ft^2..)
L = 200.0                           //Length of pipe (ft)
MC = 30000.0
mc = 22300.0
T1 = 300.0                          //Inlet temperature of hot fluid in pipe (.)
t1 = 60.0                           //Inlet temperature of cold fluid in pipe (.)
syms T2                            //Outlet temperature of hot fluid .
syms t2                            //Outlet temperature of cold fluid .
//From table 6.2:
ID = 2.067                          //Inside diameter of pipe (in)
OD = 2.375                          //Outside diameter of pipe (in)
Dx = 0.154                          //Thickness of pipe (in)
Ai = 0.541                          //Inside sectional area of pipe (ft^2/ft)
k = 25.0                            //Thermal conductivity of pipe (Btu/h)

//Calculation:
Ui = 1.0/((1.0/h1) +(Dx/(k*12.0))+(1.0/(h2*(OD/ID))))    //Overall heat transfer coefficient (Btu/h.ft^2..)
Ai1 = Ai*L                          //Inside area of pipe (ft^3/ft)
QH = MC*(T1-T2)                     //Heat transfer rate of hot fluid (Btu/h)
QC = mc*(t2-t1)                     //Heat transfer rate of cold fluid (Btu/h)
t2ht = 195                          //t2 by hit and trial
[x] = fsolve(T2,QC-QH)
T2 = x(1)
DTlm = (T1-t1-T2+t2)/log((T1-t1)/(T2-t2))  //Log mean temperature difference (.)
Q = Ui*Ai1*subst(t2ht,t2,DTlm)       //Total heat transfer rate (Btu/h)

//Result:
disp("T2 :")
disp(subst(t2ht,t2,T2))

disp("t2 :")
disp(subst(t2ht,t2,t2))

disp("Qdot :")
disp(Q/10**6) 
disp("x 10**6 Btu/h")
