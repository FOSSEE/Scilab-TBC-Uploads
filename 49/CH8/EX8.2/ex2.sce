//CHAPTER 8 _ TEMPERATURE MEASUREMENT
//Caption : THERMOCOUPLE AND THERMOPILE
// Example 2 // Page 511
h=(100/5)*10^-3    // in mv
printf('emf per thermocouple is  %1.2f mV \n', h);
// e(0-100)+e(100-t)=e(0-t)
// Let e(0-100) = E1 and e(100-t)= E2
E1= 5.27 // given
E2=h;
E3=E1+E2;
E4=5.325;   // given emf at 101 deg cent
c=100 ;   // given that cold junction is at 100 deg cent
// BT EXTRAPOLATION
t=c+((E3-E1)/(E4-E1));
printf('Required temperature difference is %1.2f deg cent ' ,t)
