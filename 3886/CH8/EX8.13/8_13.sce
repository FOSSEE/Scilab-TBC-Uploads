//Force P to make motion impending to the left
//Refer fig.8.17
N1=250
N2=1000*cosd(45)
N3=500
F1=0.25*N1  //N
F2=0.25*N2  //N
F3=0.25*N3  //N
//let us give virtual displacement towards left
//Applying virtual work principle
//(P-F1-1000*sind(45)-F2-F3)*delta(s)=0
P=F1+1000*sind(45)+F2+F3  //N
printf("The required force is P=%.2f N",P)

