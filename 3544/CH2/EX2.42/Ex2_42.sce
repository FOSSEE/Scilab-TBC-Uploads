//Vernam cipher

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

a= ascii('A')

pt = "HOW ARE YOU?"                 //Plaintext
disp("")
disp("Original plaintext:")
disp(pt)

//function from dependency file
pt = remove_spaces(pt)              //Processed plaintext for encryption

disp("")
disp("Plaintext:")
disp(pt)
disp(ascii(pt)-a)

disp("")
disp("One-time pad:")               
otp = "NCBTZQARX"                   //OTP
disp(otp)
disp(ascii(otp)-a)

ct = []

for i=1:length(pt)                  //Encryption stage
    ct(i) = ascii(part(pt,i:i)) + ascii(part(otp,i:i)) -2*a
end

disp("")
disp("Initial total:")
disp(ct')


disp("")
disp("Subtracting 26 if >25")
ct = modulo(ct,26)                  //Taking modulo 26 to make range b/w 0-25
disp(ct')
ct = char(ct+a)'                    //Ciphertext

disp("")
disp("Ciphertext: ")
disp(strcat(ct))                

