clear
//

//variable declaration

// Let the diameter of the bar be ‘d’. Now, W = 800 N L = 1 m = 1000 mm
L=1000
W=800
M=W*L/4                     //Maximum moment,N-mm
f=150                       //permissible stress,N/mm^2

d=((((M*32)/(%pi*f)))**(0.33))

printf("\n d= %0.2f  mm",d)
printf("\n select 25mm bar ")
