clc
//initialisation of variables
H1= 12 //in
H2= 20 //in
z= 8 //in
h1= 24 //in
h= 20 //in
k1= 0.026 //in/sec
D= 3 //in
//calculations
k2= H2*k1/((z/(1-h/h1))-H1)
i= h1/(H1+H2)
A= %pi/4*D^2
keq= (H1+H2)/((H1/k1)+(H2/k2))
q= keq*A*i*3600
//results
printf ('rate of water flow = % 2f in^3/hr ',q)
