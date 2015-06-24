clc
//initialisation of variables
w=1.0//cfs
w1=3.0//cfs
w2=45.0//cfs
v=3.0//fps
h=144//ft
D=12*sqrt(4*w/(%pi*w1))//in
d1=1.95//cfs
D1=12*sqrt(4*d1)/(%pi*v)//in
d2=41.6//cfs
D2=12*sqrt(4*d2)/(%pi*w1)//ins
//CALCULATIONS
C=%pi*(D)^2*3/(4*h)//cfs
C1=%pi*(1/4)*3//cfs
V=(d2*4)/(%pi*4^2)//fps
//RESULTS
printf('The minimum dry-weather flow =% f cfs',C)
printf('The maximum dry-weather flow in excess actual capacity=% f cfs',C1)
printf('the storm flow in axcess of maximum dry-weather flow=% f fps',V)
