clc
clear
//Initialization of variables
h=2.5 //Btu/hr ft^2 F
kc=0.1 //Btu/hr ft F
r1=0.811/2
//calculations
r2c=kc/h *12
//results
if r2c>=r1 then
    printf("Thin layer of insulation would increase the heat dissipation from wire, r2c = %.2f in",r2c)
else
        printf("Thin layer of insulation would decrease the heat dissipation from wire. r2c=%.2f in",r2c)
end

