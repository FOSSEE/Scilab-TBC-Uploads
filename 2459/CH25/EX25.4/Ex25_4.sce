//chapter25
//example25.4
//page544

S=20 // kilo ohm per volt
V_range=10 // V
V=20 // V
R=10 // kilo ohm

R_meter=S*V_range
R_equi=R+R*R_meter/(R+R_meter)
I=V/R_equi
V_reading=I*R*R_meter/(R+R_meter)

printf("voltage read by multimeter = %.3f V \n",V_reading)

// answer in book is 9.88V but accurate answer is 9.756V 
