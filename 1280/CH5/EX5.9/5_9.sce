clc
//initialisation of variables
v= 27 //cp
s= 0.85
d= 1 //in
//CALCULATIONS
V= v/s
V1= V*0.001552
V2= 2000*V1/(12*d)
V3= 4000*V1/(12*d)
//RESULTS
printf ('Critical velocity = %.2f fps',V3)
