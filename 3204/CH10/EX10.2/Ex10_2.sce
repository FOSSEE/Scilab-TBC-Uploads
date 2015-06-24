// Initiization of variables
W1=100 // N // Pt load at C
W2=150 // N // Pt load at D
W3=200 // N // Pt load at E
l=1 // m // l=Lac=Lcd=Lde=Leb
h=2 // m // dist between Rb & top
Xa=200 // N
Xb=200 // N
// Calculations
// consider the F.B.D of entire cable
// Take moment at A
Yb=((W1*l)+(W2*2*l)+(W3*3*l)-(Xb*h))/(4*l) // N
Ya=W1+W2+W3-Yb // N // sum Fy=0
// Now consider the F.B.D of AC
// Take moment at C,
y_c=(Ya*l)/Xa // m
theta_1=atand(y_c/l) // degree
T_AC=Xa/cosd(theta_1) // N // T_AC*cosd(theta_1)=horizontal component of tension in the cable
// here, T_AC=T_max
T_max=T_AC // N
// Now consider the F.B.D of portion ACD
y_d=((Ya*2*l)-(W1*l))/(Xa) // m // taking moment at D
theta_2=atand(((y_d)-(y_c))/(l)) // degree
T_CD=Xa/(cosd(theta_2)) // N 
// Results
clc
printf('(i) The component of support reaction at A (Ya) is %f N \n',Ya)
printf('(i) The component of support reaction at B (Yb) is %f N  \n',Yb)
printf('(ii) The tension in portion AC (T_AC) of the cable is %f N \n',T_AC)
printf('(ii) The tension in portion CD (T_CD) of the cable is %f N \n',T_CD)
printf('(iii) The max tension in the cable is %f N \n',T_max)
