//function//
A=[0 1;-2 0]
B=[0;3]
Cc=cont_mat(A,B);
disp(Cc,"Controlability Matrix=")
//To Check Whether the matrix(Cc) is singular i.e determint of Cc=0
if determ(Cc)==0;
printf("Since the matrix is Singular, the system is not controllable \n");
else;
 printf("The system is  controllable \n")
 end;
 
