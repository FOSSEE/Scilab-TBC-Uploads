//Example 7.1//

R=8.314;//J/mol.K // Gas constant (From appendix 3)
a=3*R
mprintf("a = %f J/mol K",a)
//for aluminum there are 26.98 g per g-atom
b=1;//mol //
c=26.98;//g //grams // atomic mass of aluminium (From appendix 1)
d=1000;//g/kg
a1=a*(b/c)*d
mprintf("\n a1 = %i J/kg.K",a1)
