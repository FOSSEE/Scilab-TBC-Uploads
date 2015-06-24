//Variable declaration:
//From example 17.13:
Qf = 108.9                  //Fin heat transfer rate (W)
Qw = 18.4                   //Total heat transfer rate without the fin (W)

//Calculation:
E = Qf/Qw                   //Fin effectiveness

//Result:
printf("The fin effectiveness is : %.2f .",E)
if E>2 then
    printf("Hence, the use of the fin is justified.")
end    
