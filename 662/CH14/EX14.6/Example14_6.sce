            //Example 14.6
            //Use of bitwise operators
a = '6db7'
b = 'a726'
ad = hex2dec(a)
ac = bitcmp(ad,16)       //bit complement of decimal a
ac=dec2hex(37448)
disp(ac);
bd = hex2dec(b)
bc = bitcmp(bd,16)       //bit complement of decimal b
bc=dec2hex(22745)
disp(bc);
aandb = bitand(ad,bd)    //bit and of a&b
aandb=dec2hex(9510)
disp(aandb); 
aorb = bitor(ad,bd)      //bit or of a|b
aorb=dec2hex(aorb)
disp(aorb);
axorb = bitxor(ad,bd)      //bit or of a^b  
axorb=dec2hex(axorb)
disp(axorb);