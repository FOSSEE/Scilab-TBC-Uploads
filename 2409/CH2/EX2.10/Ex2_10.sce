

//Variable Declaration

y=2000      //year
mon=12      //month
dy=18       //day
hours=13    //hours of the day
minutes=0   //Minutes of the day
seconds=0   //Seconds of the day


//Calculation
d=dy+(hours/24)+(minutes/(24*60))+seconds  //Days in December 
if mon<=2 then
   y=y-1
   mon=mon+12
else
   y=y
   mon=mon
end

A=floor(y/100)      //Converting years to days
B=2-A+floor(A/4)    //Converting years to days
C=floor(365.25*y)     //rounding the days 
D=floor(30.6001*(mon+1)) //Converting months to days
JD=B+C+D+d+1720994.5     //Adding reeference to number of days


//Result

printf("The Julian day of given day is : %.4f Days",JD)
