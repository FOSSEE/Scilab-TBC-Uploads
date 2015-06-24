pathname=get_absolute_file_path('21_2.sce')
filename=pathname+filesep()+'21_2data.sci'
exec(filename)
clear
Mx=-Sy*(L-Lc);//moment at section
L3=(L1*(L-Lc)+ L2*Lc)/L;//leangth of CS
B3=(B1*(L-Lc)+ B2*Lc)/L;//breadth of CS
Ixx=4*Aco*(B3/2)^2 + 2*Ace*(B3/2)^2;
B=[Aco;Ace;Aco;Aco;Ace;Aco];
Y=[B3/2;B3/2;B3/2;-B3/2;-B3/2;-B3/2];
Dxr=[(L1-L2)/(2*L);0;-(L1-L2)/(2*L);-(L1-L2)/(2*L);0;(L1-L2)/(2*L)];
Dyr=[-(B1-B2)/(2*L);-(B1-B2)/(2*L);-(B1-B2)/(2*L);(B1-B2)/(2*L);(B1-B2)/(2*L);(B1-B2)/(2*L)];
for i=1:6
    Pz(i)=(Mx/Ixx)*Y(i)*B(i);
    Px(i)=Pz(i)*Dxr(i);
    Py(i)=Pz(i)*Dyr(i);
    P(i)=(((Px(i))^2 +(Py(i))^2 +(Pz(i))^2)^0.5)*((abs(Pz(i)))/Pz(i));
end
Syw=Sy-sum(Py);
qb(1)=0
for i=2:4
    qb(i)=qb(i-1)+(-Syw/Ixx)*B(i-1)*Y(i-1);
end
qb(5)= qb(3);
qb(6)= qb(2);
qs0=((-Sy*L3/2)+(qb(2)*L3*B3*0.5 +qb(3)*L3*B3*0.5 +qb(4)*B3*L3*0.5))/(2*L3*B3);
q=-qb+qs0*ones(6,1);
disp(q,"shear flow (61,12,23,34,45,56)")