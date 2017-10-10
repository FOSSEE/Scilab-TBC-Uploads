
//Longitudinal redundancy check

data = [ "11100100","11011101","00111001","00101001" ]
disp("Original data")
disp(data)
data = bin2dec(data)

lrc = 0.

for i=1:length(data)
    lrc = bitxor(lrc,data(i))
end

disp("LRC: ")

for i=1:7
    if lrc<(2^(8-i)) then
        printf("0")
    else
        printf("%s",dec2bin(lrc))
        break        
    end
end

