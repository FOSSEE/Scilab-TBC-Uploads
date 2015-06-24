clc
clear 
printf("example 3.12 page number 99\n\n")

//to find the fraction of air recirculated

r = 50   //weight of dry air passing through drier
w1 = 1.60   //in kg per kg dry solid
w2 = 0.1    //in kg/kg dry solid
H0 = 0.016  //in kg water vapor/kg dry air
H2 = 0.055  //in kg water vapor/kg dry air

y = 1 - (w1-w2)/(r*(H2-H0));
printf("fraction of air recirculated = %f",y)

H1 = H2 - (w1-w2)/r;
printf("\n\nhumidity of air entering the drier = %f kg water vapor/kg kg dry air",H1)

//check
H11 = H2*y+H0*(1-y);
if H1 == H11 then printf("\n\nfraction of air recirculated = %f \n verified",y)
end
