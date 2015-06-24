//Example (pg no.133)    

       A=[1 1;0 1]
       inv(A)
       B=[1 0;1 1]
       inv(B)
       A*B
       inv(A*B)
       inv(A)*inv(B)
                                       //inv(A*B)=inv(B)*inv(A)
       inv(B)*inv(A)
                                         //Hence inv(A)*inv(B) = inv(A)*inv(B)
        I=eye(3,3)
        C=(A*B)*(inv(A)*inv(B))
                                        //C!=I 
                                         //so, inv(A)*inv(B) cannot be the inverse of (A*B)