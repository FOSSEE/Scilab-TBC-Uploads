clear
//variable declaration
//Let the reactions at A be  Va and Ma
//summation of all  horizontal forces is zero & vertical forces is zero.

P1=(15)                                     //vertical down  Load  at 3m from A,KN
P2=(10)                                     //vertical down  Load  at 5m from A,KN 
M=(30)                                      //CW moment at 4m distance from A, KN-m
Pu=(20)                                     //uniform distributed load from A to 2m from A,KN/m(in 2m of span)
////horizontal,vertical component at  A is  Ha,Va respectively.
printf("\n no horizontal force   HA=0")
Va=Pu*2+P1+P2
printf("\n VA= %0.2f  KN",Va)
Ma=Pu*2*1+P1*3+P2*5+M
printf("\n MA= %0.2f  KN-m",Ma)
