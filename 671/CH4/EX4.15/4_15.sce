Z1=complex(2,-1)
Z2=complex(0,-5)
Z3=complex(2,1)
I1=1
I2=complex(0,-2)

//deactivate curr source 2
V11=I1*(Z2+Z3)/(Z1+Z2+Z3)*Z1
V21=I1*Z1/(Z1+Z2+Z3)*Z3

//deactivate curr source 1
V12=I2*Z3*Z1/(Z1+Z2+Z3)
V22=I2*(Z1+Z2)/(Z1+Z2+Z3)*Z3

V1=V11+V12
V2=V21+V22

disp(V2,V1)