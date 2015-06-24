//                 Example 3.1
//The program shows the use of integer arithmetic to convert a given number- 
//of days into months and days

days=input('Enter days:');
months=int16(days/30);          //Compute for months
days =int16(pmodulo(days,30));  //compute for days
disp(days,"Days =",months,"Months =");