//water chemistry//
//example 7.2//
F=56;//atomic weight of ferrus//
S=32;//atomic weight of sulphur//
O=16;//atomic weight of oxygen//
Ca=40;//atomic weight of calsium//
C=12;//atomic weight of carbon//
W1=F+S+(4*O);//molecular weight of FeSO4//
W2=Ca+C+(3*O);//molecular weight of CaCO3//
A=(W1/W2)*100;
printf("Required FeSO4 for 100ppm of hardness is %fmg/lit",A);
P=210.5;//required ppm of hardness//
B=(A/100)*P;
printf("\nRequired FeSO4 for 210.5ppm of hardness is %fmg/lit or ppm of FeSO4",B);