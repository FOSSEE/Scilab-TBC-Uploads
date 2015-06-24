
V=3.217
bits=4
base=5
a=0

for i=1:bits
    a=floor(V/base*(2^i))
    disp(a);
    V=V-a*base/(2^i)
end
