clc;
//Example 32.8
//page no 514
printf("Example 32.8 page no 514\n\n");
//a filter press is in operation
//we have to determine the appraisal value of the press
i=0.03375//intrest on fund
n=9//time,year
SFDF=i/((1+i)^n -1)//sinking fund depreciation factor
P=60000//cost of filter press,$
L=500//salvage value,$
UAP= (P-L)*SFDF//uniform annual payment,$
printf("\n uniform annual payment UAP=%f $",UAP);
//in determing the appraisel value where the straight line method of depreciation is used 
// B = P -(P-L/n)x
//where x refers to any time the present before the end of usable
x=5//let for 5 year
B5=P-((P-L)/n)*x//appraissl value for 5 year
printf("\n apprasial value B=%f $",B5);
