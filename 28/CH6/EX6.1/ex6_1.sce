s=%s;
p=s^4+8*s^3+18*s^2+16*s+5
r=coeff(p)
D1=r(4)
d2=[r(4) r(5);r(2) r(3)]
D2=det(d2);
d3=[r(4) r(5) 0;r(2) r(3) r(4);0 r(1) r(2)]
D3=det(d3);
d4=[r(4) r(5) 0 0;r(2) r(3) r(4) r(5);0 r(1) r(2) r(3);0 0 0 r(1)]
D4=det(d4);
disp(D1,"D1=")
disp(D2,"D2=")
disp(D3,"D3=")
disp(D4,"D4=")
printf("Since all the determinants are positive the system is stable")