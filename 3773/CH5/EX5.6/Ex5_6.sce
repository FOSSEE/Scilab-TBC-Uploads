//Chapter 5: Point Source and Their Arrays
//Example 5-6.6
clc;

//Variable Initialization
lobes = [0.25,0.37,0.46,0.12,0.07]  //Normalized power of lobes (unitless)

//Calculation
ohm_a = 0                   //Beam area (sr)
sum_lobes = 0               //Sum of all lobes (unitless)
for i=lobes
    ohm_a =ohm_a + 2*%pi*(%pi/36)*(i)
    sum_lobes =sum_lobes + i
end
D = 4*%pi/ohm_a         //Directivity (unitless)
D_db = 10*log10(D)     //Directivity (in dBi)
e_m = lobes(1)/sum_lobes    //Beam efficiency (unitless)

//Result
mprintf("The directivity is %d or %.1f dBi",D,D_db)
mprintf("\nThe beam efficiency is %.1f",e_m)
