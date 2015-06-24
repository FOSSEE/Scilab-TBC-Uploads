CIdB=15
CI=10^(CIdB/10)
q=(6*(CI))^0.25
K=q*q/3
if K >4 then
    K=7
end
disp(K,'optimum value of K for an omnidirectional antenna design')

q1=(CI^0.25-0.7)
k=q1*q1/3
if k<3 then k=3
end
disp(k,'practical value of K for 6-sector 60deg. directionl antenna design')
