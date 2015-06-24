pathname=get_absolute_file_path('21_3.sce')
filename=pathname+filesep()+'21_3data.sci'
exec(filename)
clear
Lc1=Lc+ 0.1*10^3,Lc2=Lc- 0.1*10^3;
Mx1=-Sy*(L-Lc1);//moment at section1
L31=(L1*(L-Lc1)+ L2*Lc1)/L;//leangth of CS1
B31=(B1*(L-Lc1)+ B2*Lc1)/L;//breadth of CS1
Mx2=-Sy*(L-Lc2);//moment at section2
L32=(L1*(L-Lc2)+ L2*Lc2)/L;//leangth of CS2
B32=(B1*(L-Lc2)+ B2*Lc2)/L;//breadth of CS2
L3=(L31+L32)/2;
B3=(B31+B32)/2;
Ixx1=4*Aco*(B31/2)^2 + 2*Ace*(B31/2)^2;
Ixx2=4*Aco*(B32/2)^2 + 2*Ace*(B32/2)^2;
B=[Aco;Ace;Aco;Aco;Ace;Aco];
Y1=[B31/2;B31/2;B31/2;-B31/2;-B31/2;-B31/2];
Y2=[B32/2;B32/2;B32/2;-B32/2;-B32/2;-B32/2];
Dxr=[(L1-L2)/(2*L);0;-(L1-L2)/(2*L);-(L1-L2)/(2*L);0;(L1-L2)/(2*L)];
Dyr=[-(B1-B2)/(2*L);-(B1-B2)/(2*L);-(B1-B2)/(2*L);(B1-B2)/(2*L);(B1-B2)/(2*L);(B1-B2)/(2*L)];
for i=1:6
    Pz1(i)=(Mx1/Ixx1)*Y1(i)*B(i);
    Px1(i)=Pz1(i)*Dxr(i);
    Py1(i)=Pz1(i)*Dyr(i);
    P1(i)=(((Px1(i))^2 +(Py1(i))^2 +(Pz1(i))^2)^0.5)*((abs(Pz1(i)))/Pz1(i));
    Pz2(i)=(Mx2/Ixx2)*Y2(i)*B(i);
    Px2(i)=Pz2(i)*Dxr(i);
    Py2(i)=Pz2(i)*Dyr(i);
    P2(i)=(((Px2(i))^2 +(Py2(i))^2 +(Pz2(i))^2)^0.5)*((abs(Pz2(i)))/Pz2(i));
end
delP=(P1-P2)/200;
q12=(Sy*L3*0.5 +delP(2)*2*L3*B3*0.25 +(delP(2)+delP(3))*L3*B3*0.5 +delP(6)*L3*B3*0.5)/(2*L3*B3*0.25 +2*L3*B3*0.25 +L3*B3*0.5 +L3*B3*0.5);
q23=q12-delP(2);
q34=q12-(delP(2)+delP(3));
q45=q12-(delP(2)+delP(3)+delP(4));
q56=q12;
q61=q12-delP(6);
q=[q12;q23;q34;q45;q56;q61];
disp("Shear flow(q12;q23;q34;q45;q56;q61):");
printf("\n %f N/mm",q);