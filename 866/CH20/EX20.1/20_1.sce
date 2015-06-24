clc
//initialisation of variables
Xac= 2 //m
Xcb= 4 //m
Xbd= 2 //m
Wa= 1 //N
Wc= 1 //N
Wd= 1 //N
//CALCULATIONS
Rb= Wa*Xac/(Xac+Xcb)  
Sc= Rb
Ra= Wc*Xcb/(Xac+Xcb)
Sc1= -Ra
Ra1=-Wd*Xbd/(Xac+Xcb)
Mc= Ra*Xac
Mc1= Ra1*Xac
//RESULTS
printf ('Rb= %.2f KN',Rb)
printf (' \n Ra= %.2f KN ',Ra) 
printf (' \n Ra= %.2f KN ',Ra1)
printf (' \n Mc= %.2f KN m',Mc1)
