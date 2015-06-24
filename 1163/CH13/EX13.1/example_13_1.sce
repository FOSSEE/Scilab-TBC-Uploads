clear;
clc;
disp("--------------Example 13.1---------------")

// function to check if thhe 2nd hex digit from the left is even or odd
function []=check (a)

    s=strsplit(a,[1,2]); // extract the 2nd hex digit from left
    d= hex2dec(s(2));
    bin=dec2bin(d,4); // convert to binary
    bits=strsplit(bin,3); // least significant bit
    lb=bits(2);
    
    if(lb=='0') // check if even or odd
        printf("This is a unicast address because the second hexadecimal digit from the left i.e %s in binary is %s and is even.\n",s(2),bin);
    else
        printf("This is a multicast address because the second hexadecimal digit from the left i.e %s in binary is %s and is odd.\n",s(2),bin);
    end
endfunction

// a) 4A:30:10:21:1O:1A
a="4A:30:10:21:1O:1A";
printf("\na)");
check(a); // calling the function

// b) 47:20:1B:2E:08:EE
b="47:20:1B:2E:08:EE";
printf("\nb)");
check(b); // calling the function

// c) FF:FF:FF:FF:FF:FF
c="FF:FF:FF:FF:FF:FF";
s = strsplit(c,":",6); // split into 2 hex digits
for i=1:6
    if(s(i)=="FF") // check if equal to FF
        continue;
    else
        break;
    end
    
end
if(i==6)
    printf("\nc)This is a broadcast address because all digits are Fs.") //print the result
end

