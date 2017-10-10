clear
//
//given
v=440 //voltage
o=25000 //output power
e=0.9 //efficiency
p=0.85 //poer factor
//case a
il=o/(3**0.5*v*p*e) //line current
printf("\n il= %0.5f  A",il)
//case b
ip=o/(3*v*e*p) //phase current for delta current winding
printf("\n ip= %0.5f  A",ip)
