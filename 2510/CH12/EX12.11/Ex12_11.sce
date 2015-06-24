//Variable declaration:
//From example 12.9:
Cp = 4127.0                         //heat capacity (J/kg . K)
DTe = 3.0                           //New excess temperature (°C)
h_vap = 2.26*10**6                  //latent heat of vaporization (J/kg)

//Calculation:
Ja_L = Cp*DTe/h_vap                 //Liquid Jakob number

//Result:
printf("The liquid Jakob number is : %.5f",Ja_L)
