//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : Sound Measurement
// Example 10// Page 370
Lp1=75   //('enter the sound level first machine=:')
Lp2=77   //('enter the sound level second machine=:')
Lp3=79   //('enter the sound level third machine=:')
disp("Since the noise levels are incoherent,the total sound pressure is the sum of the mean square value of the individual sound pressures")
disp("Lp_total=10*log10(10^(Lp1/10)+10^(Lp2/10)+10^(Lp3/10))")
Lp_total=10*log10(10^(Lp1/10)+10^(Lp2/10)+10^(Lp3/10));
printf('The total sound pressure is %ddB',Lp_total)
//decibles are normally rounded off to the nearest integers