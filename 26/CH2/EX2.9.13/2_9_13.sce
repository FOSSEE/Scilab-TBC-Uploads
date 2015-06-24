disp('the given matrix is:')
a=[1 -3 2 -4;-3 9 -1 5;2 -6 4 -3;-4 12 2 7]
disp(a)
disp('performing row operations')
a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
a(4,:)=a(4,:)-(a(4,1)/a(1,1))*a(1,:)
disp(a)
a(4,:)=a(4,:)-2*a(2,:)
disp(a)
a(4,:)=a(4,:)-a(3,:)
disp(a)
k=0
for i=1:4
  for j=i:4
    if(a(i,j)<>0)
      k=k+1
      break
    end
  end
end
disp(k,'dimension of the matrix=')