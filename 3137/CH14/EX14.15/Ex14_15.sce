//Initilization of variables
w_bc=10 //rad/s
AB=250 //mm
BC=150 //mm
AC=179 //mm
AD=200 //mm
theta1=45 //degrees
//Calculations
v_c=(BC/1000)*w_bc //m/s
AC=sqrt((AB^2+BC^2)-(2*AB*BC*cosd(theta1))) //m
betaa=asind((BC*sind(theta1))/AC) //degrees
gammaa=asind((AB*sind(theta1))/AC)//degrees answer in the textbook is incorrect
ang=60-betaa //degrees
CD=sqrt(AD^2+AC^2-(2*AD*AC*cosd(ang))) //mm
D=asind((AC*sind(ang))/CD) //degrees
theta=asind((AD*sind(D))/AC) //degrees
n=360-(theta+gammaa+90) //degrees
v_cd=v_c*cosd(n) //m/s
del=180-(90+D) //degrees
v_D=v_cd/cosd(del) //m/s
w_AD=v_D/(AD/1000) //rad/s
//Result
clc
printf('The angular Velocity of AD is %frad/s',w_AD ) //Negative sign indicates clockwise orientation 
//Answer in the textbook is incorrect
