pathname=get_absolute_file_path('23_4.sce')
filename=pathname+filesep()+'23_4data.sci'
exec(filename)
clear
y1=0.5*[W1;W1;W1;-W1;-W1;-W1];
y2=0.5*[W2;W2;W2;-W2;-W2;-W2];
x1=[0;L12;L12+L11;L12+L11;L12;0];
x2=[0;L22;L22+L21;L22+L21;L22;0];
Li=[L12;L11;W1;L11;L12;W1;W1];
for i=1:6;
    I1(i)=B(i)*y1(i)*y1(i);
    del(i)=Li(i)/t(3);
end
del(7)=Li(7)/t(3);
Ixx=sum(I1);
dely=(y1-y2);
delx=(x1-x2);
epr=[L12;0;L11;L11;0;L12];
nr=abs(y1);
for i=1:6
    Pz(i)=(Mx/Ixx)*B(i)*y1(i);
    Py(i)=Pz(i)*dely(i)/L;
    Px(i)=Pz(i)*delx(i)/L;
    Pr(i)=((Px(i)^2 +Py(i)^2 +Pz(i)^2)^0.5)*(y1(i)/abs(y1(i)));
    Pxn(i)=-abs(Px(i)*nr(i));
    Pyep(i)=Py(i)*epr(i); 
end
Pyep(6)=-Pyep(i);
Sxw=-sum(Px);
Syw=Sy-sum(Py);
qb=[0;0;(-Syw/Ixx)*(B(3)*y1(3));0;0;(-Syw/Ixx)*(B(6)*y1(6));(-Syw/Ixx)*B(5)*y1(5)];
qb1=0;
for i=1:7
    qb1=qb(i)*del(i) +qb1;
end
A1=L11*W1;
A2=L12*W1;
P=[((del(2)+del(3)+del(4)+del(7))/A1)+(del(7))/A2   -((del(7)/A1)+((del(1)+del(5)+del(6)+del(7))/A2));
   2*A1  2*A2];
X=[(qb1/(3*A1))+(qb1/(3*A2));-(qb(3)*W1*L12 +qb(6)*W1*L11)-sum(Pxn)+sum(Pyep)];
qs=inv(P)*X;
M1=-[qs(2);qs(1);qs(1);qs(1);qs(2);qs(2);qs(1)-qs(2)];
q=qb+M1;
disp("shear flow(q12;q23;q34;q45;q56;q61;q52):");
printf("\n %f N/mm",q)