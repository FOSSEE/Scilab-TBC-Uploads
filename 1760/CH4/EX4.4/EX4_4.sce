                      //EXAMPLE 4-4        PG NO-224
A=[1 1 0 0 0 1;0 -1 1 -1 0 0;-1 0 -1 0 -1 0];
A1=[1 0 -1;1 -1 0;0 1 -1;0 -1 0;0 0 -1;1 0 0];
det(A*A1)=A*A1;
disp('i) Numbers of trees  ([A*A^T]) is   =  '+string (det(A*A1)) +'  ');
