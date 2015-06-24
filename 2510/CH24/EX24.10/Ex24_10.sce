//variable Declaration:
mTa = [100,100,100,100,100,100,100,100,100,100]                   //Mean weeks for thermometer failure(A)
mTb = [90,90,90,90,90,90,90,90,90,90]                    //Mean weeks for thermometer failure(B)
mTc = [80,80,80,80,80,80,80,80,80,80]                    //Mean weeks for thermometer failure(C)
sTa = 30                                //Standard deviation (weeks) for thermometer failure(A)
sTb = 20                                //Standard deviation (weeks) for thermometer failure(B)
sTc = 10                                //Standard deviation (weeks) for thermometer failure(C)
Ra = [0.52,0.80,0.45,0.68,0.59,0.01,0.50,0.29,0.34,0.46]         //Random No corrosponding to A
Rb = [0.77,0.54,0.96,0.02,0.73,0.67,0.31,0.34,0.00,0.48]         //Random No corrosponding to B
Rc = [0.14,0.39,0.06,0.86,0.87,0.90,0.28,0.51,0.56,0.82]         //Random No corrosponding to B
Za = [0.05,0.84,-0.13,0.47,0.23,-2.33,0.00,-0.55,-0.41,-0.10]    //Normal variable corrosponding to random No for A
Zb = [0.74,0.10,1.75,-2.05,0.61,0.44,-0.50,-0.41,-3.90,-0.05]    //Normal variable corrosponding to random No for B
Zc = [-1.08,-0.28,-1.56,1.08,1.13,1.28,-0.58,0.03,0.15,0.92]     //Normal variable corrosponding to random No for C

//Calculations:
Ta = mTa+sTa*Za
Tb = mTb+sTb*Zb
Tc = mTc+sTc*Zc
Ts = min(list(Ta,Tb))
Ts = min(list(Ts,Tc))
k = sum(Ts)/length(Ts)
m = [k,k,k,k,k,k,k,k,k,k]
s = sqrt(sum((Ts-m)**2)/(length(Ts)-1))

//Results:
printf("Standard deviation : %.1f Weeks",s)
