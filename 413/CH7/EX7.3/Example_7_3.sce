clc
clear
A=[5 8]
B=[3 4
   2 5]
C=[12
   10]
printf('The Primal:')
printf('\nMax f = %dx1+ %dx2',A(1,1),A(1,2))

for i=1:2
printf('\n%dx1 +%dx2<=%d', B(i,1),B(i,2),C(i,1))
end
printf('\nx1, x2>=0')
A=A'
B=B'
C=C'
printf('\n\nThe Dual:')
printf('\nMin f = %dy1+ %dy2',C(1,1),C(1,2))

for i=1:2
printf('\n%dy1 +%dy2>=%d', B(i,1),B(i,2),A(i,1))
end
printf('\ny1, y2>=0')