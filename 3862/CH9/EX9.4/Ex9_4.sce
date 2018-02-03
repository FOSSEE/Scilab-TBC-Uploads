clear
//variable declaration
//Let the reactions at A be Ha, Va and Ma
//summation of all  horizontal forces is zero & vertical forces is zero.

P1=(20)                                     //vertical down  Load  at 2m from A,KN
P2=(12)                                     //vertical down  Load  at 3m from A,KN 
P3=(10)                                     //vertical down  Load  at 4m from A,KN
Pu=(16)                                     //uniform distributed load from A to 2m from A,KN/m(in 2m of span)
////horizontal,vertical component at  A is  Ha,Va respectively.
printf("\n no horizontal force  HA=0")
Va=Pu*2+P1+P2+P3
printf("\n VA= %0.2f  KN",Va)
Ma=Pu*2*1+P1*2+P2*3+P3*4
printf("\n MA= %0.2f  KN-m",Ma)
