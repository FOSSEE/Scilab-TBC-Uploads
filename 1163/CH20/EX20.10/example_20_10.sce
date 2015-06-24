clear;
clc;
disp("--------------Example 20.10---------------")
source_address="10.12.14.5";
destination_address="12.6.7.9";
// convert all the fields to hexadecimal
a1=hex2dec("4500");
a2=28;
a3=1;
a4=0;
a5=hex2dec("0411");
a6=0;
a7=hex2dec("0A0C");
a8=hex2dec("0E05");
a9=hex2dec("0C06");
a10=hex2dec("0709");
d_sum=a1+a2+a3+a4+a5+a6+a7+a8+a9+a10; // find the sum of all fielda
Sum=dec2hex(d_sum);
c=bitcmp(d_sum,16); // complement sum
Checksum=dec2hex(c);
printf("Figure shows an example of a checksum calculation for an IPv4 header without options. The header is divided into 16-bit sections.\nAll the sections are added and the sum is complemented.The sum is %s and the checksum is %s.\nThe result is inserted in the checksum field.",Sum,Checksum); // display result
// display the figure
clf();
xname("--------------Example 20.10----------------");
xrects([.28 .33 .38 .44;.8 .8 .8 .8;.05 .05 .06 .16;.06 .06 .06 .06]);
xrects([.28 .44 .52;.74 .74 .74 ;.16 .08 .08 ;.06 .06 .06 ]);
xrects([.28 .36 .44 ;.68 .68 .68 ;.08 .08 .16 ;.06 .06 .06 ]);
xrect(.28,.62,.32,.06);
xrect(.28,.56,.32,.06);
for i=0:9
    xarrows([.38 .42],[.47-(i/25) .47-(i/25)],.3);
end
xarrows([.38 .42],[.04 .04],.3);
xarrows([.38 .42],[.002 .002],.3);
xpoly([.44 .52],[.06 .06]);
xset("font size",3);
xstring(.34,.033,"Sum");
xstring(.3,.00001,"Checksum");
xstring(.3,.46,"4,5 and 0");
xstring(.35,.42,"28");
xstring(.36,.38,"1");
xstring(.31,.34,"0 and 0");
xstring(.31,.3,"4 and 17");
xstring(.44,.46,"4  5  0  0");
xstring(.44,.42,"0  0  1  C");
xstring(.44,.38,"0  0  0  1");
xstring(.44,.34,"0  0  0  0");
xstring(.44,.3,"0  4  1  1");
xstring(.44,.26,"0  0  0  0");
xstring(.44,.22,"0  A  0  C");
xstring(.44,.18,"0  E  0  5");
xstring(.44,.14,"0  C  0  6");
xstring(.44,.1,"0  7  0  9");
xstring(.44,.031,"7  4  4  E");
xstring(.44,.000001,"8  B  B  1");
xstring(.36,.26,"0");
xstring(.33,.22,"10.12");
xstring(.34,.18,"14.5");
xstring(.34,.14,"12.6");
xstring(.35,.1,"7.9");
xstring(.4,.565,source_address);
xstring(.41,.51,destination_address);
xstring(.3,.75," 4         5         0                       28");
xstring(.35 ,.69,"1                         0                0");
xstring(.31,.63,"4                 17                      0");
xpoly([.51 .55],[.02 0.02]);
xarrows([.55 .55],[0.02 .65],.6);