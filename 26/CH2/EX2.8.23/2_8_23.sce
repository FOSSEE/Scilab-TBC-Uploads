disp('the given matrix is:')
a=[4 5 9 -2;6 5 1 12;3 4 8 -3]
disp(a)
disp('performing row operaions')
a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
disp(a)
a(3,:)=a(3,:)-(a(3,2)/a(2,2))*a(2,:)
disp(a)
a(1,:)=a(1,:)/a(1,1)
a(2,:)=a(2,:)/a(2,2)
disp(a)
for i=1:3
  for j=i:4
    if(a(i,j)<>0)
       disp('is a pivot column',j,'column')
       break
    end
  end
 end