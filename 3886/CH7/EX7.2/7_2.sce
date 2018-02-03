//speed of follower
d1=600  //mm
d2=400  //mm
N1=160  //rpm
N2=2  //rpm
//if there is no slip
aN2=(600*160)/(400)  //rpm
//when there is 2.5% slip
p=2.5/100
bN2=(N1*d1*(100-p))/(d2*100)  //rpm
printf("\nWhen there is no slip \nN2=%0.2f rpm\nWhen there is 2.5 percent slip \nN2=%0.2f rpm",aN2,bN2)
