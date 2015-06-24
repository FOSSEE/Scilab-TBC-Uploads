//CLC
w= 1200 //mm
d= 618 //mm
t= 150 //mm
BM= 500 //KNm
Scu= 30 //N/mm^2
Sy= 410 //mm^2
//CALCULATIONS
Mu= 0.4*Scu*w*t*(d-(t/2))*10^-6
n= d-sqrt(d^2-(2*BM*10^6/(0.4*Scu*w)))
l= d-(n/2)
As= BM*10^6/(0.87*Sy*l)
//RESULTS
printf("As(mm^2) = %.2f",As)
