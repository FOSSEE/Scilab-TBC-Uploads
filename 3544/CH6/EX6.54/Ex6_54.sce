
//Base 64 encoding example

[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

//Get function to create encoding table
exec("Chapter_6.sci",-1)

enc = encoding_table()

inp = "001000110101110010010001"        // Input
disp("24-bit input:")
disp(inp)
disp("")
dec = []

for i=1:length(inp)/6                       //Convert to 6-bit packets stored as
    str = part(inp,((i-1)*6+1):((i-1)*6+6)) //integers
    dec(i)=0
    for j=1:length(str)
        if part(str,j:j)=='1' then
            dec(i) = dec(i)+2^(6-j)
        end
    end
end

disp("Divided into 6-bit blocks:")
disp(dec2bin(dec'))
disp("")

disp("Decimal equivalents:")                
disp(dec')                                  //Decimal equivalents
disp("")
dec_str = []

for i=1:length(dec)
    dec_str(i) = (ascii(enc(dec(i)+1)))
end

disp("Map to base-64 encoding table (shown in Fig. 6.55):")
disp(dec_str')                              //Character values from encoding table
disp("")
dec_str = ascii(dec_str)

bin_str = dec2bin(dec_str)                  //Convert to ASCII binary
bin_str = string(bin_str)
bin_str = '0'+bin_str                       //Convert to 8-bit from 7-bit
disp("ASCII equivalent binary")
disp(bin_str)
