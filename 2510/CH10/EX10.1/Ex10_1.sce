//Variable declaration:
Gr = 100.0                  //Grashof number
Re = 50.0                   //Reynolds number

//Calculation:
LT = Gr/Re**2               //Measure of influence of convection effect

//Result:
if (LT<1.0) then
    printf("The free convection effects can be neglected.")
elseif (LT>1.0) then
    printf("The free convection effects can not be neglected.")
end    
