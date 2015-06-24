clc
//Initialization of variables
z=3 //ft
s=0.82
//calculations
ua=sqrt(z*2*32.2)
ub=sqrt(2*32.2*(-2*(1-s) +ua^2 /(2*32.2)))
//results
printf("Velocity at B= %.1f fps",ub)
