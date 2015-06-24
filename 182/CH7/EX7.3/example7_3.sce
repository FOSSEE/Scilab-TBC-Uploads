// To determine which of the circuits 7-1(a) or 7-2(b) has greater accuracy
// example 7-3 in page 166
clc;
//Data given
V1=495; I1=0.5; // voltmeter and ammeter reading in volt and ampere respectively of circuit 7-1(a)
V2=500; I2=0.5;// voltmeter and ammeter reading in volt and ampere respectively of circuit 7-1(b)
//calculation
printf("R from circuit 7-1(a)=%d ohm\nR from circuit 7-1(b)=%d ohm\n",V1/I1,V2/I2);
printf("thus circuit 7-1(a) gives the more accurate result");
//result
//R from circuit 7-1(a)=990 ohm
//R from circuit 7-1(b)=1000 ohm
//thus circuit 7-1(a) gives the more accurate result 