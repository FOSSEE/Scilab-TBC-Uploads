clc;
AC=[3.6,3.6];//m,  Position vector of AC
AE=[1.8,3.6,0];//m,  Position vector of AE
W=[0,-2000];//N, load
AD=[3.6,3.6,-1.8];//m,  Position vector of AD
lambda=AD/norm(AD)//m, Unit vector along AD
ACW=AC(1)*W(2)-AC(2)*W(1);//N.m K  Cross product of AC and w
lACW=-lambda(3)*ACW;//N.m,dot product of lambada and ACW
lAET=-lACW;//N.m, by SumM_AD=0,triple product of lambada, AE and T .....1
lAE=[lambda(2)*AE(3)-lambda(3)*AE(2),lambda(3)*AE(1)-lambda(1)*AE(3),lambda(1)*AE(2)-lambda(2)*AE(1)];//Cross product of lambada and AE
unit=lAE/norm(lAE);// Unit vector of cross product.....2
T=lAET/(lAE(1)+lAE(2)+lAE(3));//N, by 1 amd 2
Tmin=unit*T;//N, Vector of minimum tension
printf("Minimum Value of tension vector T=(%.1f N)i +(%.1f N)j +(%.1f N)k  is %.0f N \n",Tmin(1),Tmin(2),Tmin(3),norm(Tmin));

//Location of G
//EG and Tmin are having same direction, so their component should be in proportion
x=-1.8/Tmin(3)*Tmin(1)+1.8;//m, X co-ordinate of G
y=-1.8/Tmin(3)*Tmin(2)+3.6;//m, Y co-ordinate of G
printf("Co-ordinates of G are x=%.0f m and y= %.1f m",x,y);
