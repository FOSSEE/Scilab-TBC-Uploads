disp('the augmented matrix is:')
a=[1 0 0 0 0 0 0;1 2 4 8 16 32 2.9;1 4 16 64 256 1024 14.8;1 6 36 216 1296 7776 39.6;1 8 64 512 4096 32768 74.3;1 10 10^2 10^3 10^4 10^5 119];
disp(a)
disp('performing row transformations')
for k=2:6
  a(k,:)=a(k,:)-a(1,:)
end
disp(a)
j=2;
for k=3:6
  a(k,:)=a(k,:)-j*a(2,:)
  j=j+1;
end
disp(a)
j=[0 0 0 3 6 10];
for k=4:6
  a(k,:)=a(k,:)-j(k)*a(3,:)
end
disp(a)
a(5,:)=a(5,:)-4*a(4,:)
a(6,:)=a(6,:)-10*a(4,:)
disp(a)
a(6,:)=a(6,:)-5*a(5,:)
disp(a)
a(6,:)=a(6,:)/a(6,6)
disp(a)
j=[0 32 960 4800 7680]
for k=1:5
  a(k,:)=a(k,:)-j(k)*a(6,:)
end
disp(a)
a(5,:)=a(5,:)/a(5,5)
j=[0 16 224 576]
for k=2:4
  a(k,:)=a(k,:)-j(k)*a(5,:)
end
a(4,:)=a(4,:)/48
a(2,:)=a(2,:)-8*a(4,:)
a(3,:)=a(3,:)-48*a(4,:)
a(3,:)=a(3,:)/8
a(2,:)=a(2,:)-4*a(3,:)
a(2,:)=a(2,:)/2
disp(a)
v=[a(1,7) a(2,7) a(3,7) a(4,7) a(5,7) a(6,7)]
p=poly(v,"t","coeff")
disp('p(t)=')
disp(p)
disp('p(7.5)=64.6 hundred lb')