clc
//initialisation of variables
z1=20//mm
z2=50//mm
z3=30//mm
z4=60//mm
z5=25//mm
z6=100//mm
h=1500//rpm
//CALCULATIONS
N=h*((z1*z3)/(z2*z4))//rpm
N4=h*((z1*z3*z5)/(z2*z4*z6))//rpm)
//RESULTS
printf('the train of gears =% f rpm',N4)
