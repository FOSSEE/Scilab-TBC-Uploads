clear
 clc
//To find speed in meters per second
//to find volume in cubic centimeters

// GIVEN::

//speed 
speed1 = 55 //miles per hour
//volume of gasoline
volume1 = 16 //gallons

// SOLUTION:

//speed in meters per second
// since 1 mile = 1609 meters and 1 hour = 3600 seconds
speed = (55)*(1609/1)*(1/3600) //miles per hour

//volume of gasoline in cubic centimeters
// since 1 gallon = 231 cubic inches and 1 inch = 2.54 centimeter  
volume = 16*(231/1)*(2.54/1)^3 // cubic centimeters
speed = round(speed)
printf ("\n\n Speed in meters per second speed =\n\n %2i m/s" ,speed);
printf ("\n\n Volume of gasoline in cubic centimeters volume =\n\n %.1e cm^3" ,volume);
