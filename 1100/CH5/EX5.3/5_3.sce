clc
//initialisation of variables
p= 500 //psia
V2= 0.9278 //cu ft/lb
V1= 0.0197 //cu ft/lb
h= 1204.4 //Btu/lb
h1= 449.4 //Btu/lb
//CALCULATIONS
W= p*144*(V2-V1)
U= h-h1-(W/778)
//RESULTS
printf ('Change in internal enenrgy = %.1f Btu',U)
