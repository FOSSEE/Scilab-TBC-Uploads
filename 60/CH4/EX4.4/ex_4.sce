
 //Example (pg no.136)
 
 // x1 + 2(x2) = 3
 //2(x1) + 4(x2) = 6
 
        A=[1 2;2 4]
            //coefficient matrix of above equations
        b=[3 6]'
        x=A\b
     //for corresponding homogenous system
             //  x1 + 2(x2) = 0
            //2(x1) + 4(x2) = 0
         A=[1 2;2 4]
             //coefficient matrix of above equations
        b=[0 0]'
        x=A\b