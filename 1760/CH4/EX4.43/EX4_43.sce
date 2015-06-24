                   //EXAMPLE 4-43              PG NO-256-257
X=[3 -1 -2;6 -1 -2;6 -5 -16];
disp('i) Ditermenent X   is     =  '+string (det(X)) +'  ');
X1=[0 -1 -2;80 -1 -2;40 -5 -16];
V1=X1/X;
disp('ii) Ditermenent V1   is     =  '+string (det(V1)) +' V ');
X2=[3 0 -2;6 80 -2;6 40 -16];
V3=X2/X;
disp('iii) Ditermenent V3   is     =  '+string (det(V3)) +' V ');
X3=[3 -1 0;6 -1 80;6 -5 40];
V4=X3/X;
disp('iv) Ditermenent V4   is     =  '+string (det(V4)) +' V ');
