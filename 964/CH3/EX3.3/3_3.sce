n=16;//no of bits
num=0;
for i=0:(n-2)
    num=num+(1*(2^i));
end
disp((-1*num),"to",num,"Thus a 16-bit computer word can store decimal integers ranging from")