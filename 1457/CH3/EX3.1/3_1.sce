clc
//Initialization of variables
Q=0.5 //cfs
d1=8 //in
d2=4 //in
R=2 //in
h=0.59 //in
//calculations
Aa=%pi*(d1/12)^2 /4
Va=Q/Aa
Ab=2*%pi*R*h/144
Vb=Q/Ab
//results
printf("Average velocity at section A =%.2f fps ",Va)
printf("\n Average velocity at section B=%.2f fps ",Vb)
