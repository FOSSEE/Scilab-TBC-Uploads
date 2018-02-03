//Force P required
//refer fig. 16.13 (a),(b)
//The system of forces acting on connecting bodies is shown in figure
N1=250  //N
mu=0.3
F1=mu*N1  //N
N2=(1000*3)/(5)  //N
F2=0.3*N2  //N
N3=500  //N
F3=mu*N3  //N
//Let the constant force be P
//writing work energy equation
P=((250+1000+500)*3*3/(2*9.81*4.5))+75+180+1000*0.8+150  //N
printf("\nThus P=%.3f N",P)


