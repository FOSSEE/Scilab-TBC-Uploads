clear;
clc;
disp("--------------Example 13.2---------------")
// address = 47:20:1B:2E:08:EE
address = "47:20:1B:2E:08:EE";

function[bin_str]=bin_address (address) // function to convert address in hexadecimal to binary
    b=strsplit(address);
    bin_str="";
    for i=1:length(address)
        if(modulo(i,3)==0)  // to exclude ":"
            continue;
        else
            d=hex2dec(b(i));
            bin=dec2bin(d,4);
            bin_str=bin_str+bin;  // address in binary
        end
        
    end
endfunction
bin_str=bin_address(address);

function [addr] = revstr(bin_str) // function to reverse the nibbles in the address
    str_nibble=strsplit(bin_str,[4 8 12 16 20 24 28 32 36 40 44 ]);
    addr="";
    for i=1:12
        rev=strrev(str_nibble(i));
        addr=addr+rev; // resultant string
    end
endfunction
addr=revstr(bin_str);
bytes=strsplit(addr,[8 16 24 32 40]);  // spilt into bytes

function [bytes]=exchgnib(bytes) // function to exchange the nibbles in each byte
    for i=1:6
        nib=strsplit(bytes(i),4);
        
        temp=nib(1); // exachanging nibbles
        nib(1)=nib(2);
        nib(2)=temp;
        bytes(i)=nib(1)+nib(2);
    end
endfunction
bytes=exchgnib(bytes); // final address
printf("\nThe address is sent left-to-right, byte by byte; for each byte, it is sent right-to-left, bit by bit, as :\n\n       %s %s %s %s %s %s",bytes(1),bytes(2),bytes(3),bytes(4),bytes(5),bytes(6));
