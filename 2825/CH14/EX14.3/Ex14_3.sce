//Ex14_3 Pg-695
clc

n1=1.5//core refracrive index
n2=1.46 //cladding refractive index

tetha_rad=asin(n2/n1) //critical angle in radians
tetha=tetha_rad*180/%pi //critical angle in degree 
printf("Critical angle = %.1f degree \n",tetha)

tetha_m_rad=asin(sqrt(n1^2-n2^2)) //acceptance angle in radians
tetha_m=tetha_m_rad*180/%pi
printf(" Acceptance angle = %.1f degree \n",tetha_m)

NA=sin(tetha_m_rad)
printf(" Numerical Apperture = %.3f",NA)


