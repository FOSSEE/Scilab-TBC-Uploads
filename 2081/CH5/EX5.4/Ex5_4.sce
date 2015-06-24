Y=4//path loss exponent
N=6

K=7
q=sqrt(3*K)
CI=(2*(q-1)^(-Y)+2*q^(-Y)+2*(q+1)^(-Y))^(-1)//C/I for omnidirectional operating cell
CIdB=10*log10(CI)
disp(CIdB,'co-channel interfernce ratio C/I in dB for K=7')

K1=9
q1=sqrt(3*K1)
CI1=(2*(q1-1)^(-Y)+2*q1^(-Y)+2*(q1+1)^(-Y))^(-1)
CI1dB=10*log10(CI1)
disp(CI1dB,'co-channel interfernce ratio C/I in dB for K=9')

K2=12
q2=sqrt(3*K2)
CI2=(2*(q2-1)^(-Y)+2*q2^(-Y)+2*(q2+1)^(-Y))^(-1)
CI2dB=10*log10(CI2)
disp(CI2dB,'co-channel interfernce ratio C/I in dB for K=12')


if (CIdB<18) then
disp(,'K=7 is imperfect')
else 
disp(,'K=7 is perfect')
end

if (CI1dB<18) then
disp(,'K=9 is imperfect')
else 
disp(,'K=9 is perfect')
end

if (CI2dB<18) then
disp(,'K=12 is imperfect')
else 
disp(,'K=12 is perfect')
end
