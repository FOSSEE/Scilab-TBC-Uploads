//Least value of theta to avoid slipping of ladder
//refer fig.8.21
//Applying virtual work principle
//-0.4*NA*6*cosd(theta)*delta(theta)-200*(-3*sind(theta)*delta(theta))-900*(-5*sind(theta)*delta(theta))+0.25*NB(-6*sind(theta)*delta(theta))=0
NA=1100/(1+0.25*0.4)  //N
NB=0.4*1000  //N
theta=atand(2400/4500)  //degree
printf("Thus theta=%.2f degree",theta)

