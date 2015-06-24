clc
//initialisation of variables
Q= 40 //gpm
d= 2 //in
d1= 4 //in
//CALCULATIONS
v1= Q*4/(%pi*d^2*3.12)
v2= %pi*v1*4/(%pi*d1^2)
//RESULTS
printf ('velocity of fluid in the conductor = %.2f fps',v1)
printf (' \n  velocity of fluid in a maniflod = %.2f fps',v2)
