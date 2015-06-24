// Initilization of variables
W1=400 // N // vertical load at pt C
W2=600 // N // vertical load at pt D
W3=400 // N // vertical load at pt E
l=2 // m // l= Lac=Lcd=Lde=Leb
h=2.25 // m // distance of the cable from top
L=2 // m // dist of A from top
// Calculations
// Solving eqn's 1&2 using MATRIX for Xb & Yb
A=[-L 4*l;-h 2*l]
B=[((W1*l)+(W2*2*l)+(W1*3*l));(W1*l)]
C=inv(A)*B
// Now consider the F.B.D of BE, Take moment at E
y_e=(C(2)*l)/C(1) // m / here y_e is the distance between E and the top
theta_1=atand(y_e/l) // degree // where theta_1 is the angle between BE and the horizontal
T_BE=C(1)/cosd(theta_1) // N (T_BE=T_max)
// Now consider the F.B.D of portion BEDC
// Take moment at C
y_c=((C(2)*6)-(W3*4)-(W2*2))/(C(1)) // m
theta_4=atand(((y_c)-(l))/(l)) // degree
T_CA=C(1)/cosd(theta_4) // N // Tension in CA
// Results
clc
printf('(i) The horizontal reaction at B (Xb) is %f N \n',C(1))
printf('(i) The vertical reaction at B (Yb) is %f N \n',C(2))
printf('(ii) The sag at point E (y_e) is %f m \n',y_e)
printf('(iii) The tension in portion CA (T_CA) is %f N \n',T_CA)
printf('(iv) The max tension in the cable (T_max) is %f N \n',T_BE)
printf('(iv) The max slope (theta_1) in the cable is %f degree \n',theta_1)
