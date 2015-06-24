//Chapter-9,Example 11,Page 222
clc();
close();

u= 0.196   //speed of Ag+

v=1      //speed of NO3-

t_Ag=u/(u+v)   //transport number of Ag+ ions

t_NO3= 1-t_Ag   //transportnumber of NO3- ions

printf('the transport number of Ag+ ions is %.3f',t_Ag)

printf('\n the transport number of NO3+ ions is %.3f',t_NO3)

//mistake in textbook
