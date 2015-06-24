clear;
clc;
disp("--------------Example 28.2---------------")
tag="00000100"; // OCTET STRING tag
Length="00000010"; // 2 bytes 
octet_string="HI";
H_value="01001000"; // 48
I_value="01001001"; // 49
H_value_dec=48; // value in decimal
I_value_dec=49; // value in decimal
tag_dec=bin2dec(tag); // tag's decimal value
Length_dec=bin2dec(Length); // length's decimal value or number of bytes
// display the format
printf("\n       0%d          0%d          %d         %d\n",tag_dec,Length_dec,H_value_dec,I_value_dec);
printf("    | %s | %s | %s |  %s |\n",tag,Length,H_value,I_value);
printf("      Tag        Length       Value      Value\n");
printf("     (string)   (2 bytes)      (H)         (I)");
