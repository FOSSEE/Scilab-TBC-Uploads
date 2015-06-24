N=1
Y=4
K=4
q=sqrt(3*K)
CI=((q+0.7)^(-Y))^(-1)//C/I for 6-sector
CIdB=10*log10(CI)
disp(CIdB,'signal to co-channel interfernce ratio C/I in dB')

if CIdB>18 then
a= CIdB-6
if a>18 then
disp(,'K=4 is adequate system as C/I is still geater than 18dB after considering the practical conditions with reductions of 6dB ')

else 
disp(,'K=4 is inadequate system as C/I is smaller than 18dB after considering the practical conditions with reductions of 6dB ')
end


else 
disp(,'K=4 is inadequate system as C/I is less than the minimum required value of 18dB ')
end
