clc 
//initialisation of variables
Q= 0.7 //cfs
d= 6 //in
v1= 1.084*10^-5 //ft^2/sec
v2= 0.394*10^-5 //ft^2/sec
R= 2320
//CALCULATIONS
v3= R*v1/(d/12)
v4=R*v2/(d/12) 
v= Q*4/(%pi*(d/12)^2)
//RESULTS
printf ('crititcal velocity = %.4f ft/sec ',v4)
printf ('\n actual velocity = %.2f ft/sec ',v)
