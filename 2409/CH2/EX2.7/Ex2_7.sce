
//Calculation
ndays=400*365    //Nominal number of days in 400years
nleapyrs=400/4   //Nominal number of leap years
gregoriandays=ndays+nleapyrs-3  //number of days in 400 years of Gregorian calendar
gregavg=gregoriandays/400    //number of days in 400 years of Gregorian calendar

//Result
disp (gregoriandays)
printf("The average length of the civil year in gregorian calender is : %.4f days",gregavg)
