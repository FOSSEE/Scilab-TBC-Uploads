// Variable Declaration
E = 40.0        //Safe working stress(kV/cm) rms
d = 1.5         //Conductor diameter(cm)
D = 6.7         //Sheath diameter(cm)
t = 0.1         //Thickness of lead tube(cm)


// Calculation Section
r = d/2                     //Conductor radius(cm)
R = D/2                     //Sheath radius(cm)
r_i = r+((R-r)/2)-t/2       //Internal radius of intersheath(cm)
r_e = r_i + t               //External radius of intersheath(cm)
V_1 = E*r*log(r_i/r)   //Voltage across conductor & intersheath(kV)
V_2 = E*r_e*log(R/r_e) //Voltage across intersheath & earthed sheath(kV)
V = V_1 + V_2               //Safe working voltage with intersheath(kV)
V_no = E*r*log(R/r)    //Safe working voltage without intersheath(kV)

// Result Section
printf('Safe working voltage with intersheath , V = %.2f kV' ,V)
printf('Safe working voltage without intersheath , V = %.2f kV' ,V_no)
