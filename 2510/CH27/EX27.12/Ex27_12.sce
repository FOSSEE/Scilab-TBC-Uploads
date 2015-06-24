//Variable declaration:
TH = 500                        //Hot stream temperature at exchanger 1 ( F)
tc = 100                        //Cold stream temperature at exchanger 2 ( F)
A = 10                          //Constant A
B1 = 100000                     //Constant B1
B2 = 4000                       //Constant B2
B3 = 400000                     //Constant B3

//Calculations:
//It forms equation fo form t^2 - t(Th-tc) +tcTH +B/A
t1 = roots([1, -(TH+tc),(tc*TH + B1/A) ]); //Roots
tmax1 = TH - sqrt(B1/A)         //Upon maximising profit
t2 = roots([1, -(TH+tc),(tc*TH + B2/A) ]); //Roots
tmax2 = TH - sqrt(B2/A)         //Upon maximising profit
t3 = roots([1, -(TH+tc),(tc*TH + B3/A) ]); //Roots
tmax3 = TH - sqrt(B3/A)         //Upon maximising profit

//Results:
printf("tBE for case 1: %.0f F %.0f F",t1(1),t1(2))
printf("tmax1: %.0f F",tmax1)
printf("tBE for case 2: %.0f F %.0f F",t2(1),t2(2))
printf("tmax1: %.0f F",tmax2)
printf("tBE for case 1: %.0f F %.0f F",t3(1),t3(2))
printf("tmax1 : %.0f F",tmax3)
