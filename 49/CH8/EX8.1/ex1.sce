//CHAPTER 8 _ TEMPERATURE MEASUREMENT
//Caption : Thermocouple
// Example 1 // Page 500
t1 = 100    //('entering the temperature(in deg cent) =:')
e1= 5      // ('entering the emf (in mv)at temperature t1 =:')
t2=445    //('entering the second temperature(in deg cent)= :')
e2=25    //('entering the emf(in mv) at temperature t2 =:')
// TO CALCULATE CONSTANTS a AND b
//e1=a*(t1)+b*(t1^2);
//e2=a*(t2)+b*(t2^2);
A=[t1 t1^2;t2 t2^2];

B=[e1 0 ;e2 0]
Y=lsq(A,B);    //computes the minimum norm least square solution of the equation A*Y=B,
disp(Y)

printf('value of constants a and b are %fd V/deg cent and %fd V/deg cent respectively',Y(1,1),Y(2,1))
//PART B
//Let e(0-40) be represented by E1 , e(40-t) by E2 and e(0-t) by E3

E1=(Y(1,1)*40)+(Y(2,1)*40^2);
disp(E1);
E2=2;    // given
E3=E1+E2;
D=sqrt((Y(1,1)^2)+(4*Y(2,1)*E3));
t=(-Y(1,1)+D)/(2*Y(2,1));
disp(t)
printf('Hot junction temperature is %1.1f deg cent ',t);
// PART C
// Let e(0-500) be represented by E4 and e(40-500) by E5
E4=Y(1,1)*500+Y(2,1)*500^2;
E5=E4-E1;
disp (E5)
printf('emf when the hot junction is at 500 and cold at 40 is %1.1f mV ',E5);








