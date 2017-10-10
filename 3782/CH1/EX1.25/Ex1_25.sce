

//CH-1 PAGE-42,43  PB-2

//
//


sc=100 //scale length
area=93750 //area
l=6.0 //length
b=6.25 //bredth

cm2=(area)/(l*b) // 1 cm^2 

cm=sqrt(cm2)
RF=1/(sc*cm)

printf("\n RF= %0.3f ",RF)

leng=14 // assumme length of scale
leng=leng*cm 

printf("\n length of final scale is  %0.3f ",leng)
