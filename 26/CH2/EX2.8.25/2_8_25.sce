disp('the given matrix is:')
a=[1 4 8 -3 -7;-1 2 7 3 4;-2 2 9 5 5;3 6 9 -5 -2]
disp(a)
disp('performing row operations')
a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
a(4,:)=a(4,:)-(a(4,1)/a(1,1))*a(1,:)
disp(a)
a(3,:)=a(3,:)-(a(3,2)/a(2,2))*a(2,:)
a(4,:)=a(4,:)-(a(4,2)/a(2,2))*a(2,:)
disp(a)
a(4,:)=a(4,:)-(a(4,4)/a(3,4))*a(3,:)
disp(a)
for i=1:4
  for j=i:5
    if(a(i,j)<>0)
      disp('is a pivot column',j,'column')
      break
    end
  end
end