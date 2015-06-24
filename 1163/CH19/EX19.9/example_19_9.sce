clear;
clc;
disp("--------------Example 19.9---------------")
//address :- 205.16.37.39/28
n=28;
by=8;    //number of bits i.e 1 byte
a3=dec2bin(205,by);         // convert decimal numbers to binary numbers
a2=dec2bin(16,by);
a1=dec2bin(37,by);
a0=dec2bin(39,by);
disp("Binary notation of the address is "+a3+" "+a2+" "+a1+" "+a0)//display address in binary notation
a=a3+a2+a1+a0;
mask="";
for i = 1:n
    mask=mask+'1'; //adding 1s to the mask
end
m=32-n;
for i = 1:m
    mask=mask+'0'; //adding 0s to the mask
end
ma=strsplit(mask,[8 16 24]);
disp("The mask is "+ma(1)+" "+ma(2)+" "+ma(3)+" "+ma(4)) //display the mask
//a) first address
x=strsplit(a);
y=strsplit(mask);
for i= 1:32
    fa0(i)=bitand(strtod(x(i)),strtod(y(i)));  // perform 'and' of address and mask to get 1st address
end
fa1=string(fa0(1:8));
fa2=string(fa0(9:16));
fa3=string(fa0(17:24));
fa4=string(fa0(25:32));
printf("\na) The first address is "); //display result
printf("%s",fa1);
printf(" ");
printf("%s",fa2);
printf(" ");
printf("%s",fa3);
printf(" ");
printf("%s",fa4);

//b) last address
for i=1:32
    cp0(i)=bitcmp(strtod(y(i)),1);  //find complement of the mask
end
for i=1:32
    la0(i)=bitor(strtod(x(i)),cp0(i)); //perform 'or' of address and complement of the mask
end
cp1=string(cp0(1:8));
cp2=string(cp0(9:16));
cp3=string(cp0(17:24));
cp4=string(cp0(25:32));
printf("\n\nb) The complement of the mask is ");
printf("%s",cp1);
printf(" ");
printf("%s",cp2);
printf(" ");
printf("%s",cp3);
printf(" ");
printf("%s",cp4);

la1=string(la0(1:8));
la2=string(la0(9:16));
la3=string(la0(17:24));
la4=string(la0(25:32));
printf("\n\n  The last address is ");  //display the result
printf("%s",la1);
printf(" ");
printf("%s",la2);
printf(" ");
printf("%s",la3);
printf(" ");
printf("%s",la4);

// c) number of addresses
cp="";
for i=1:32
    cp=cp+string(cp0(i));
end
dec=bin2dec(cp);
num_of_addresses=dec+1;  //  formula to find number of addresses 
printf("\n\nc) The number of addresses is %d.",num_of_addresses); // display the result

