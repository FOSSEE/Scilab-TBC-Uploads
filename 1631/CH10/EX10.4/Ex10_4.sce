//Caption:  errors,corrected errors
//Example 10.4
//page no 464
//Find  detected errors,corrected errors
clear;
clc;
dmin=5
 // (s+1)<= dmin number errors can be detected(s)
 s=dmin-1;
printf(" i)Number of detected errors \n\n \t s <= %d  ",s );
//(2t+1)<=dmin number errors can be corrected(t)
t=(dmin-1)/2;

printf("\n\n ii) Number of corrected errors\n\n \t  t<= %d ",t );
