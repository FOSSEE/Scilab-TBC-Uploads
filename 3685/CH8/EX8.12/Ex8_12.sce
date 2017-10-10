clc
Qr = 500 // Heat release in kW
Tr = 2000 // Fuel burning temperature in K 
T0 = 300 // Ambient temperature in K
// Part (a)
printf("\n Example 8.12")
Qa = 480 // Energy absorption by furnace in kW
Ta = 1000 // Furnace temperature in K 
n1a = (Qa/Qr) // first law efficiency
n2a = n1a*(1-(T0/Ta))/(1-(T0/Tr)) //second law efficiency

//The answers vary due to round off error
printf(" \n\n PART (A)")
printf("\n The first law efficiency is %d percent" ,n1a*100)
printf("\n The second law efficiency is %d percent",n2a*100)

// Part (b)
Qb = 450 // Energy absorption in steam generation in kW
Tb = 500// steam generation temperature in K 
n1b = (Qb/Qr)// first law efficiency
n2b = n1b*(1-(T0/Tb))/(1-(T0/Tr))//second law efficiency
printf(" \n\n PART (B)")
printf("\n The first law efficiency is %d percent" ,n1b*100)
printf("\n The second law efficiency is %f percent",n2b*100)
// Part (c)
Qc = 300 // Energy absorption in chemical process in kW
Tc = 320 // chemical process temperature in K 
n1c = (Qc/Qr) // first law efficiency
n2c = n1c*(1-(T0/Tc))/(1-(T0/Tr))//second law efficiency
printf(" \n\n PART (C)")
printf("\n The first law efficiency is %d percent",n1c*100)
printf("\n The second law efficiency is %f  percent" ,n2c*100)
// Part (d)
Qd = 450 
n1d = (Qd/Qr)
n2a_= n1d*(1-(T0/Ta))/(1-(T0/Tr))
n2b_= n1d*(1-(T0/Tb))/(1-(T0/Tr))
n2c_= n1d*(1-(T0/Tc))/(1-(T0/Tr))
printf(" \n\n PART (D)")
printf("\n The First law efficiency for all the three cases would remain same and here is %d percent",n1d*100) //The answer provided in the textbook is wrong

printf("\n The Second law efficiency of part (a) is %f percent",n2a_*100)

printf("\n The Second law efficiency of part (b) is %f percent",n2b_*100)

printf("\n The Second law efficiency of part (c) is %f percent",n2c_*100)

