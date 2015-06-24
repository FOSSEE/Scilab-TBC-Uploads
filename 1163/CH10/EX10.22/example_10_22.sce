clear;
clc;
disp("--------------Example 10.22---------------")
// at the sender
n1=7;
n2=11;
n3=12;
n4=0;
n5=6;
s_sum=n1+n2+n3+n4+n5; // find the sum 
s_bin=dec2bin(s_sum);
s=strsplit(s_bin,length(s_bin)-4);
a=bin2dec(s(1));
b=bin2dec(s(2));
f=a+b;  // wrapping the sum
s_checksum=bitcmp(f,4); // complementing
// display the result
printf("The sender initializes the checksum to 0 and adds all data items and the checksum . The result is %d. However, %d cannot\nbe expressed in 4 bits. The extra two bits are wrapped and added with the sum to create the wrapped sum value %d. The sum is then\ncomplemented, resulting in the checksum value %d . The sender now sends six data items to the receiver including the checksum %d.\n\n",s_sum,s_sum,f,s_checksum,s_checksum); 

// at the reciever
r_sum=n1+n2+n3+n4+n5+s_checksum; // find the sum including checksum sent by sender
r_bin=dec2bin(r_sum);
r=strsplit(r_bin,length(r_bin)-4);
c=bin2dec(r(1));
d=bin2dec(r(2));
e=c+d; // wrapping the sum
r_checksum=bitcmp(e,4); // complementing
// display the result
printf("The receiver follows the same procedure as the sender. It adds all data items (including the checksum); the result is %d.\nThe sum is wrapped and becomes %d. The wrapped sum is complemented and becomes %d the checksum.\n",r_sum,e,r_checksum);
// check if data is corrupt or not
if(r_checksum==0)
    printf("Since the value of the checksum is 0, this means that the data is not corrupted. The receiver drops the checksum and keeps the other data items.");
else
    printf("The checksum is not zero,hence the entire packet is dropped.");
end

