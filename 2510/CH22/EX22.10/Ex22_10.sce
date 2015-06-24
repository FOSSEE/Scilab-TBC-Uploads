//Variable declaration:
//From example 22.9:
t1 = 23.5                           //Initial temperature of oil ( C)
t2 = 27                             //Final temperature of oil ( C)
T1 = 93                             //Water heating temperature of water ( C)
T2 = 88.16                          //Minimum temperature of heating water ( C)
U = 34.6                            //Overall heat transfer coefficient (W/m^2. C)
Q = 7227.2                          //Duty of exchanger (W)
D = 6*0.0254                        //Inside diameter of %pipe (m)
l = 6.68                            //Previous heat transfer length (m)

//Calculation:
DT1 = T1-t1                         //Inlet temperature difference ( C)
DT2 = T2-t2                         //Outlet temperature difference ( C)
DTlm = (DT1-DT2)/log(DT1/DT2)       //Log mean temperature difference ( C)
A = Q/(U*DTlm)                      //Required heat transfer area (m^2)
L = A/(%pi*D)                        //Required heat transfer length (m)

//Result:
printf("The length of the parallel %%pipe heat exchanger is : %.2f ",L)
if L>l then
    printf("The tube length would increase slightly.")
elseif L<l then
    printf("The tube length would decrease slightly.")
end    
