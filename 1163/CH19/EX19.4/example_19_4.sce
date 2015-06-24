clear;
clc;
disp("--------------Example 19.4---------------")
function []= binclass (q)       //function to determine the class of a address in binary notation 
    c=strsplit(q,1);
if(c(1)=="0")
     disp(" The first bit is O. This is a class A address.")
else
    c=strsplit(q,2);
    if(c(1)=="10")
        disp(" The first 2 bits are 1O. This is a class B address.")
    else
        c=strsplit(q,3);
        if(c(1)=="110")
            disp(" The first 3 bits are 11O. This is a class C address.")
        else
            c=strsplit(q,4);
            if(c(1)=="1110")
                disp(" The first 4 bits are 111O. This is a class D address.")
            elseif(c(1)=="1111")
                disp(" The first 4 bits are 1111. This is a class E address.")
end
end
end
end
endfunction  //end of function 

function [] = byteclass (q)           //function to determine the class of a address in decimal notation
if(q>=0 & q<= 127)
    disp(" The first byte is between 0 and 127; the class is A.")
elseif(q>=128 & q<=191)
    disp(" The first byte is between 128 and 191; the class is B.")
elseif( q>=192 & q<=223)
    disp(" The first byte is between 192 and 223; the class is C.")
elseif( q>=224 & q<=239)
    disp(" The first byte is between 224 and 239; the class is D.")
elseif(q>=240 & q<=255)
    disp(" The first byte is between 240 and 255; the class is E.")
end
endfunction     //end of function


//a) 00000001 00001011 00001011 11101111
q="00000001";
printf("\na)");
binclass(q);  //calling the function 
//b) 11000001 10000011 00011011 11111111
q="11000001";
printf("\nb)");
binclass(q);  //calling the function 
//c) 14.23.120.8
q=14;
printf("\nc)");
byteclass(q);  //calling the function
//d) 252.5.15.111
q=252;
printf("\nd)");
byteclass(q);  //calling the function

