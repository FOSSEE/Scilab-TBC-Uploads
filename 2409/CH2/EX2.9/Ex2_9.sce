

//Calculation
days=324   //Number of days
hours=floor(24*0.95616765)  // Number of hours
decimalfraction1=24*0.95616765-hours
minutes=floor(60*decimalfraction1)  // Number of minutes
decimalfraction2=60*decimalfraction1-minutes
seconds=60*decimalfraction2  // Number of seconds

//Result

disp(decimalfraction1)
disp(decimalfraction2)
printf("An Epoch day has %.2f days %.2f hours %.2f minutes %.2f seconds",days,hours,minutes,seconds)
