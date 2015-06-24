//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : Sound Measurement
// Example 9// Page 369
disp("Lp=104")
Lp=104  //('enter the sound pressure level in decibles=:')
disp("pa=20*10^-6;")
disp("p=sqrt(10^(Lp/10)*pa^2);")
pa=20*10^-6;   // rms pressure threshold of hearing
p=sqrt(10^(Lp/10)*pa^2);
printf('root mean square sound pressure is %1.3fPa\n',p)
