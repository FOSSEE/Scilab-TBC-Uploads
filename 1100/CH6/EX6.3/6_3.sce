clc
//initialisation of variables
h1= 1227.6 //Btu/lb
h2= 1223.9 //Btu/lb
g= 32.2 //ft/sec^2
v1= 4.937 //cu ft/lb
d= 2/12 //in
A1=%pi*d^2 /4.
//CALCULATIONS
V1= sqrt((2*g*(h1-h2)*778)/((1.1)^2-1))
V2= 1.1*V1
w=A1*V1/v1
//RESULTS
printf ('Average velovity at section1 = %.f fps',V1)
printf (' \n Average velovity at section2 = %.f fps',V2)
printf ('\n rate of flow =%.2f lb/sec', w)
