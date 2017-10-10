//applying KVL we have Vi(t) = R*i(t) + 1/C * int(i(t)) dt
//                     Vo(t) = 1/C * int(i(t)) dt

syms s R C I
Vi= R*I + I/(s*C)   
Vo = I/(C*s)

disp(Vo/Vi,"transfer function=")                