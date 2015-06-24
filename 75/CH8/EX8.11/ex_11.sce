    //EXAMPLE (PG 549)

    //Gauss Seidel Method

exec gaussseidel.sce
A = [10 3 1;2 -10 3;1 3 10]    //    Coefficient matrix
b = [14 -5 14]'                //    Right hand matrix
x0 = [0 0 0]'                  //    Initial Gauss
gaussseidel(A,b,x0)            //    Calling function

        //        End the problem                    
