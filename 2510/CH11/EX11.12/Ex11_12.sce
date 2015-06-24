//Variable declaration:
D = 0.0833                          //Diameter of tube (ft)
L = 2.0                             //Length of tube (ft)
h = 2.8                             //Heat transfer coefficient (Btu/h.ft^2.°F)
Ta1 = 1500.0+460.0                  //Temperature of hot air in furnace (°R)
Ta2 = 1350.0+460.0                  //Temperature of hot air in the furnace brick walls (°R)
Tt = 600.0+460.0                    //Surface temperature of tube (°R)
E = 0.6                             //Surface emissivity of tube
s = 0.1713*10**-8                   //Stefan-Boltzmann constant
pi = %pi

//Calculation:
//Case 1:
A = pi*D*L                          //Area of tube (ft^2)
Qc = round(h*A*(Ta1-Tt)*10**-1)/10**-1         //Convection heat transfer from air to tube (Btu/h)
Qr = round(E*s*A*(Ta2**4-Tt**4)*10**-2)/10**-2 //Radiation feat transfer from wall to tube (Btu/h)
Q = Qr+Qc                           //Total heat transfer (Btu/h)
//Case 2:
Qp = Qr/Q*100                       //Radiation percent 
//Case 3:
hr = Qr/(A*(Ta2-Tt))                //Radiation heat transfer coefficient (Btu/h.ft^2.°F)
//Case 4:
T = Ta2-Tt                          //Temperature difference (°F)

//Result:
printf("1. The convective heat transferred to the metal tube is : %f Btu/h.",Qc)
printf("   The radiative heat transferred to the metal tube is : %f Btu/h.",Qr)
printf("   The total heat transferred to the metal tube is : %f Btu/h .",Q)
printf("2. The percent of total heat transferred by radiation is : %.1f %%.",Qp)
printf("3. The radiation heat transfer coefficient is : %.1f Btu/h.ft^2.°F.",hr)
if (T > 200) then
    printf("4. The use of the approximation Equation (11.30), hr = 4EsTav^3, is not appropriate.")
elseif (T < 200) then
    printf("4. The use of the approximation Equation (11.30), hr = 4EsTav^3, is appropriate.")
end
