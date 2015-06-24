clear;
clc;
disp("--------------Example 28.3---------------")
tag="00000110"; // OBJECT IDENTIFIER tag
Length="00000100"; // 4 bytes 
ObjectIdentifier="1.3.6.1"; // (iso.org.dod.internet)
ot1=1;
ot2=3;
ot3=6;
ot4=1;
// convert the bytes to binary
byte1=dec2bin(ot1,8);
byte2=dec2bin(ot2,8);
byte3=dec2bin(ot3,8);
byte4=dec2bin(ot4,8);
tag_dec=bin2dec(tag); // tag's decimal value
Length_dec=bin2dec(Length); // length's decimal value or number of bytes
// display the format
printf("\n       0%d          0%d          0%d         0%d        0%d        0%d\n",tag_dec,Length_dec,ot1,ot2,ot3,ot4);
printf("    | %s | %s |%s |  %s |  %s |  %s|\n",tag,Length,byte1,byte2,byte3,byte4);
printf("      Tag        Length      Value     Value     Value       Value\n");
printf("     (ObjectId)  (4 bytes)    (%d)      (%d)       (%d)          (%d)\n",ot1,ot2,ot3,ot4);
printf("                          |------%s (iso.org.dod.internet)--------|",ObjectIdentifier);
