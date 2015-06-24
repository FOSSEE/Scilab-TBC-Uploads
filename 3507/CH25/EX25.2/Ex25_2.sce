//chapter25
//example25.2
//page543

S=1000 // ohm per volt
V=50 // V
R=50d3 // ohm

R_meter=S*V

R_equi=R*R_meter/(R+R_meter) //equivalent resistance of meter and given resistance across which meter is connected

printf("ratio of circuit resistance before and after connecting multimeter = %.3f \n",R/R_equi)
printf("Thus equivalent resistance is reduced to half. So current drawn is double \n")
printf("Thus multimeter will give highly incorrect reading \n \n")
printf("As a rule, multimeter resistance should be 100 times the resistance across \nwhich voltage is to be measured \n")
