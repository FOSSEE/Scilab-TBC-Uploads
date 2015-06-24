//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Capacitance pick ups
// Example 4// Page 192
disp("h=.005")
disp("A=200*10^-6")
disp("n=0.03")
h=.005  //('enter the distance between the capacitors=:')
A=200*10^-6  //('enter the area of the transducer=:')
n=0.03  //('enter the non linearity=:')
w=.014  //('enter the side of the square capacitor=:')
er=1   // given that air if filled
eo=8.85  ;
// to calculate the sensitivity of this transducer, let it be represented by c
c=eo*er*A/h^2;
printf('sensitivity of the transducer is %1.2f pF/m \n',c)
// to calculate the sensitivity of the square moving plate sensor cl
cl=eo*er*w/h;
printf('the sensitivity of the square moving plate sensor is %1.2f pF/m ',cl)

