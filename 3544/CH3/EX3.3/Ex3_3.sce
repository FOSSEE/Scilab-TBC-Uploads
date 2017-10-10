
//Stream cipher 

disp("In text format:")
disp("Plain text")
disp("Pay 100")
disp("")

disp("Cipher text")
disp("ZTU91 ^%D")
disp("")

disp("")

disp("In binary format:")

disp("Plain text")

pt = "010111001"

disp(pt)
disp("")

//convert to decimal
pt = bin2dec("010111001")

disp("XOR operation with the key")
key="100101011"
disp(key)

//convert key to decimal
key=bin2dec(key)
disp("")

//calculate cipher text
ct = bitxor(pt,key)
ct = dec2bin(ct)

disp("Cipher text")
disp(ct)
disp("")
