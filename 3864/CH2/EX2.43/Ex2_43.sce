clear
//

//Initilization of Variables

b=60 //mm //width of bar
d=30 //mm //depth of bar
L=200 //mm //Length of bar
A=30*60 //mm**2 //Area of bar
A2=30*200 //mm**2 //Area of bar along which expansion is restrained
P=180*10**3 //N //Compressive force
E=2*10**5 //N/mm**2 //Youngs Modulus
mu=0.3 //Poissons ratio

//Calculations

//The bar is restrained from expanding in Y direction
P_z=0
P_x=P*A**-1 //stress developed in x direction

//Now taking compressive strain as positive
//e_x=P_x*E**-1-mu*P_y*E**-1      .......................(1)
//e_y=-mu*P_x*E**-1+P_y*E**-1       ....................(2)
//e_z=-mu*P_x*E**-1-mu*P_y*E**-1  ......................(3)

//Part-1
//When it is fully restrained
e_y=0
P_y=30 //N/mm**2 
e_x=P_x*E**-1-mu*P_y*E**-1
e_z=-mu*P_x*E**-1-mu*P_y*E**-1

//Change in Length 
dell_l=e_x*L //mm

//Change in width
dell_b=b*e_y

//change in Depth
dell_d=d*e_z

//Volume of bar
V=b*d*L //mm**3
//Change in Volume
e_v=(e_x+e_y+e_z)*V //mm**3

//Part-2
//When 50% is restrained

//Free strain in Y direction
e_y1=mu*P_x*E**-1

//As 50% is restrained,so
e_y2=-50*100**-1*e_y1

//But form Equation 2 we have e_y=-mu*P_x*E**-1+P_y*E**-1 
//After substituting values in above equation and furthe simplifying we get
P_y=e_y2*E+d

e_x2=P_x*E**-1-mu*P_y*E**-1 
e_z2=-mu*P_x*E**-1-mu*P_y*E**-1

//Change in Length 
dell_l2=e_x2*L //mm

//Change in width
dell_b2=b*e_y2

//change in Depth
dell_d2=d*e_z2

//Change in Volume
e_v2=(e_x2+e_y2+e_z2)*V //mm**3

//REsult
printf("\n Change in Dimension of bar is:dell_l %0.2f  mm",dell_l)
printf("\n                              :dell_b %0.4f  mm",dell_b)
printf("\n                              :dell_d %0.2f  mm",dell_d)
printf("\n Change in Volume is %0.2f  mm**3",e_v)
printf("\n Changes in material when only 50% of expansion can be reatrained:dell_l2mm",dell_l2)
printf("\n                                                                 :dell_b2 %0.4f  mm",dell_b2)
printf("\n                                                                 :dell_d2 %0.2f  mm",dell_d2)
