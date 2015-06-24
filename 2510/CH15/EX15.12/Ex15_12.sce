
//Variable declaration:
B = 3.33*10**-5
b = 4.48*10**-5
//From example 15.11:
A = 108.2                           //Inside area of pipe (ft^3/ft)
U = 482                             //Overall heat transfer coefficient (Btu/h.ft^2..)
MC = 30000.0
mc = 23000.0
T1 = 300.0                          //Inlet temperature of hot fluid in pipe (.)
t1 = 60.0                           //Inlet temperature of cold fluid in pipe (.)
e = %e

//Calculation:
//From equation 15.28:
T2 = ((B/b)*(e**(U*A*(B-b))-1)*t1+T1*(B/b-1))/((B/b)*e**(U*A*(B-b))-1) //Outlet temperature of hot fluid (.)
//From equation 15.32:
t2 = ((b/B)*(e**(U*A*(b-B))-1)*T1+t1*(b/B-1))/((b/B)*e**(U*A*(b-B))-1) //Outlet temperature of cold fluid (.)
DT = ((T2-t1)-(T1-t2))/(log((T2-t1)/(T1-t2))) //Log mean difference temperature (.)
Q1 = U*A*DT                         //Heat transfer rate of hot fluid (Btu/h)
Q2 = MC*(T1-T2)                     //Heat transfer rate of cold fluid (Btu/h)
Q2 = round(Q2 * 10**-3)/10**-3
//Result:
printf("The heat load is : %f Btu/h.",Q2)
