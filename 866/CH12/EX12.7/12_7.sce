//CLC
d= 600 //mm
b= 250 //mm
BM= 350 //KNm
t= 28
Sc= 30 //N/mm^2
T= 400 //N/mm^2
//CALCULATIONS
Mu= 0.15*Sc*b*d^2*10^-6
n= d-sqrt(d^2-(2*BM*10^6/(0.4*Sc*b)))
l= d-(n/2)
As= BM*10^6/(l*T*0.87)
//RESULTS
printf("As(mm^2) = %.2f",As)
