clc
//initialization of varaibles
w=1 //lb/sec
v2=36.4
h1=1279.1 //B/lb
h2=1091.7 //B/lb
V1=100 //fps
//calculations
a2=w*v2/(sqrt(2*32.2*778*(h1-h2) + V1^2)) //sq ft
a2=1.705 //sq in
//results
printf("Exit area = %.3f sq. in",a2)
