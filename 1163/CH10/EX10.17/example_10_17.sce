clear;
clc;
disp("--------------Example 10.17---------------")
// a) x^6+1
r=6;
p1=(1/2)^(r-1); // formula
p2=(1/2)^r; // formula
slip1=round(p1*100);
slip2=round(p2*1000);
// display the result
printf("\na. This generator can detect all burst errors with a length less than or equal to %d bits; %d out of 100 burst errors with\nlength %d will slip by; %d out of 1000 burst errors of length %d or more will slip by.\n\n",r,slip1,r+1,slip2,r+2);
// b) x^18+x^7x+1
r=18;
p1=(1/2)^(r-1); // formula
p2=(1/2)^r; // formula
slip1=round(p1*10^6);
slip2=round(p2*10^6);
// display the result
printf("b. This generator can detect all burst errors with a length less than or equal to %d bits; %d out of 1 million burst errors with\nlength %d will slip by; %d out of 1 million burst errors of length %d or more will slip by.\n\n",r,slip1,r+1,slip2,r+2);
// c) x^32+x^23+x^7+1
r=32;
p1=(1/2)^(r-1); // formula
p2=(1/2)^r; // formula
slip1=round(p1*10^10);
slip2=ceil(p2*10^10);
// display the result
printf("c. This generator can detect all burst errors with a length less than or equal to %d bits; %d out of 10 billion burst errors with\nlength %d will slip by; %d out of 10 billion burst errors of length %d or more will slip by.\n\n",r,slip1,r+1,slip2,r+2);