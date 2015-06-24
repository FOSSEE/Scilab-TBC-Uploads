clear;
clc;
disp("--------------Example 10.23---------------")
// sender
text="Forouzan";
// computing the checksum
a=ascii(text);
h1=dec2hex(a(1));
h2=dec2hex(a(2));
h3=dec2hex(a(3));
h4=dec2hex(a(4));
h5=dec2hex(a(5));
h6=dec2hex(a(6));
h7=dec2hex(a(7));
h8=dec2hex(a(8));
// form the hexadecimal words
Fo=h1+h2;
ro=h3+h4;
uz=h5+h6;
an=h7+h8;
d1=hex2dec(Fo);
d2=hex2dec(ro);
d3=hex2dec(uz);
d4=hex2dec(an);
ps=d1+d2+d3+d4;
partial_sum=dec2hex(ps); // partial sum of the words
s=strsplit(partial_sum,[1 4]);
Sum=s(2)+dec2hex(hex2dec(s(1))+hex2dec(s(3))); // wrapping the sum
a=hex2dec(Sum)
c=bitcmp(a,16);
Checksum=dec2hex(c); // Checksum in hex
carries="1013";
printf("Checksum for a text of 8 characters (Forouzan). The text needs to be divided into 2-byte (l6-bit) words.\nWe use ASCII to change each byte to a 2-digit hexadecimal number.\n\n");
// display the process
printf("       a) Checksum at the sender site");
printf("\n         %s                         Carries\n",carries);
printf("\n          %s                          Fo",Fo);
printf("\n          %s                          ro",ro);
printf("\n          %s                          uz",uz);
printf("\n          %s                          an",an);
printf("\n          0000                          Checksum(initial)");
printf("\n          _____\n");
printf("\n          %s                        Sum(partial)",s(2)+s(3));
printf("\n          ____\n");
printf("\n             %s",s(1));
printf("\n          _____\n");
printf("\n          %s                        Sum",Sum);
printf("\n          %s                   Checksum(to send)",Checksum);

// reciever
Checksum_r=Checksum;
d_Sum=ps+c; // sum of data and checksum
partial_sum=dec2hex(d_Sum); 
s=strsplit(partial_sum,[1 4]);
Sum=s(2)+dec2hex(hex2dec(s(1))+hex2dec(s(3))); // wrapping the sum
a=hex2dec(Sum)
c=bitcmp(a,16);
Checksum=dec2hex(c); // checksum in hex
// display the process
printf("\n\n       b) Checksum at the reciever site");
printf("\n\n         %s                         Carries\n",carries);
printf("\n          %s                          Fo",Fo);
printf("\n          %s                          ro",ro);
printf("\n          %s                          uz",uz);
printf("\n          %s                          an",an);
printf("\n          %s                          Checksum(recieved)",Checksum_r);
printf("\n          _____\n");
printf("\n          %s                        Sum(partial)",s(2)+s(3));
printf("\n          ____\n");
printf("\n             %s",s(1));
printf("\n          _____\n");
printf("\n          %s                        Sum",Sum);
printf("\n          %s000                   Checksum(new)",Checksum);

