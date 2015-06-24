//Variable declaration:
//From example 17.10:
Qf = 64                     //Fin heat transfer rate (W)
Q1 = 1.48                   //Total heat transfer rate without the fin (W)

//Calculation:
E = Qf/Q1                   //Fin effectiveness

//Result:
printf("The fin effectiveness is : %.1f",E)
if E>2 then
    printf("Hence, the use of the fin is justified.")
end    
