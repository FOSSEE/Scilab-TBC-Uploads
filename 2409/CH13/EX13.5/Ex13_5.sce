
//Variable Declaration

f=4.2       //modualating frequency(MHz)
m=2.571     //Modulation index
QIF1=4.2    //Quality Impairment factor(a)
QIF2=4.5    //Quality Impairment factor(b)

//Calculation
Dv=2*m*f  //Peak to peak deviation(MHz)
PR1=12.5-20*log10(Dv/12)-QIF1+1.1*QIF1**2 //Protection ratio for case(a)
PR2=12.5-20*log10(Dv/12)-QIF2+1.1*QIF2**2 //Protection ratio for case(b)

//Results
printf("The protection ratio for quality impairment factor of 4.2 is %.1f dB",PR1)
printf("The protection ratio for quality impairment factor of 4.5 is %.1f dB",PR2)
