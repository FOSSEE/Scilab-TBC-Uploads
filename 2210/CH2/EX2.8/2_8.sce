//Chapter 2, Problem 8
clc
Z0=50                                   //characteristic impedance in ohm
//load impedance in ohm
Zl1=50
Zl2=0
Zl3=75

//calculation of reflection coefficient
ref1=(Zl1-Z0)/(Zl1+Z0)
ref2=1
ref3=(Zl2-Z0)/(Zl2+Z0)
ref4=(Zl3-Z0)/(Zl3+Z0)
printf("(a) with Zl = 50, reflection coefficient is \n magnitude = %f \n angle = %d degree\n\n",ref1,ref1)
printf("(b) with Zl = open circuit , reflection coefficient is \n magnitude = %f \n angle = %d degree\n\n",ref2,angle=0)
printf("(c) with Zl = short circuit, reflection coefficient is \n magnitude = %f \n angle = %d degree\n\n",ref3,angle2=0)
printf("(d) with Zl = 75, reflection coefficient is \n magnitude = %f \n angle = %d degree\n\n",ref4,angle3=0)
